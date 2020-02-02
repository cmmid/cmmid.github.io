#Visualisation of 2019-nCoV linelist
#Running this should automatically recreate wuhan_visual.pdf (you may need to play around with the file path)
#v1 02-02-2020 First 3 basic plots (earliest case, age by country, age by date of confirmation)

#Uses get_linelist() developed by epiforecasts group (https://epiforecasts.io/); uncomment line below if not installed
#remotes::install_github("epiforecasts/WuhanSeedingVsTransmission", dependencies = TRUE)
require(WuhanSeedingVsTransmission)
require(dplyr)

setwd("~/"); setwd("../Documents/GitHub/cmmid.github.io/ncov/basic_epi_visualisation")
pdf(file="wuhan_visual.pdf")

#Get linelist, clean up
linelist = WuhanSeedingVsTransmission::get_linelist()
linelist2 = linelist
#NB line below fixes line 4346 (ID 230) which has an incorrect date_onset_symptoms
linelist2 = linelist2 %>%
	mutate(date_onset_symptoms = ifelse(date_onset_symptoms > Sys.Date(), NA, date_onset_symptoms))
linelist2$date_onset_symptoms=as.Date(linelist2$date_onset_symptoms,origin="1970-01-01")
agerep=list(
	age1=c(0:100,"N/A","40-49","50-59","60-69","70-79","80-89","30s","40s","50s","60s","70s","80s",
		"15-88","21-39","25-89","25-89","36-45","70-82"), 
	age2=c(0:100,NA,45,55,65,75,85,35,45,55,65,75,85,
		36,30,55,57,40,76))
linelist2$age=agerep$age2[match(linelist$age, agerep$age1)]
linelist2$agegp=floor(linelist2$age/20)

#Earliest case
case1 = linelist2 %>% 
	filter(!is.na(date_confirmation)) %>%
	group_by(country) %>% 
	summarise(count=n(), date_conf=min(date_confirmation, na.rm=T), date_symp=min(date_onset_symptoms, na.rm=T))
case1 = case1 %>% arrange(desc(date_symp))
xmin=min(case1$date_conf, case1$date_symp)
xmax=max(case1$date_conf)

par(mar = c(5,7,4,2) + 0.1)
plot(y=1:nrow(case1), x=case1$date_conf, pch=15, yaxt="n", ylab="", xlab="Date", xlim=c(xmin,xmax))
points(y=1:nrow(case1), x=case1$date_symp, pch=15, yaxt="n", ylab="", xlab="", col="red", xlim=c(xmin,xmax))
axis(2, at=1:nrow(case1), labels=case1$country, las=1)
legend("bottomleft", legend=c("Symptom onset","Confirmation"), pch=15, col=c("red","black"), bty="n")

#Age by country
age = linelist2 %>% 
	filter(!is.na(age)) %>%
	group_by(country) %>% 
	summarise(count=n(), mean=mean(age, na.rm=T), sd=sd(age, na.rm=T))
age = age %>% filter(!is.na(sd))

par(mar = c(5,7,4,2) + 0.1)
plot(y=1:nrow(age), x=age$mean, pch=15, yaxt="n", ylab="", xlab="Age (y)")
arrows(y0=1:nrow(age), y1=1:nrow(age), x0=age$mean-1.96*age$sd/age$count, x1=age$mean+1.96*age$sd/age$count,
	code=3,length=0.1,angle=90)
axis(2, at=1:nrow(age), labels=age$country, las=1)
title(sub="Mean and 95% CIs assuming normally distributed")

#Age by date of confirmation
agedate = linelist2 %>% 
	mutate(dateconf=date_confirmation - as.Date("2020-01-01")) %>%
	filter(!is.na(agegp), !is.na(dateconf)) %>%
	select(agegp, dateconf)
agedate2=table(agedate$agegp, 
	agedate$dateconf %>% factor(., levels=min(agedate$dateconf):max(agedate$dateconf)))

barplot(agedate2, xlab="Date of confirmation (days since Jan 1)", ylab="Frequency",
	legend=c("0-19","20-39","40-59","60-79","80+"))
box()

dev.off()
