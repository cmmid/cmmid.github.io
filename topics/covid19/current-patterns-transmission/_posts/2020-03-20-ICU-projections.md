---

#add the title of your project
title: "Nowcasting the COVID-19 ICU demand in England"

description: We estimate critical care bed demand for COVID-19 cases in England for the next two weeks. Results suggest that current capacity might be challenged by as soon as the end of this month.

#add a status: in-progress, under-review, published
#defaults to in-progress if not set
status: in-progress

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-03-20

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author 
authors:
  - id: thibaut_jombart
    corresponding: true
  - id: mark_jit
  - id: emily_nightingale
  - id: adam_kucharski
  - id: roz_eggo
  - id: ncov-group
  - id: john_edmunds

---

## Aim

To estimate critical care bed demand for COVID-19 cases in England for the next two weeks.


## Key findings

We estimate that there will be an average of 87-726 new COVID-19 patients every day requiring ICU/HDU in England by the end of March. Combining results using two different estimates of length of stay in ICU/HDU, we estimate that this will translate to a need for 630-3,337 ICU/HDU beds.


## Summary of findings

+ As of 17th March there were 163 COVID-19 patients in critical care beds (ICU/HDU) in England. 70 new COVID-19 patients were admitted to ICU/HDU on the 18th March.
+ We estimate that the epidemic doubling time is currently about 7 days (CI: 4 to 40)  in the UK.
+ We assume that despite recently upscaled social distancing measures the care demand will keep increasing at a similar rate for another 2 weeks because of the delay between infection and hospitalisation.
+ We estimate that there will be an average of 87-726 new patients every day requiring ICU/HDU by the end of March.
+ Combining results using two different estimates of length of stay in ICU/HDU, we estimate that 630-3,337 beds would be needed for COVID-19 cases in ICU/HDU in England by the end of March.
+ A key source of uncertainty in our predictions is the doubling time. We believe that we use the currently most robust data to estimate the doubling time for COVID in the UK but there is substantial uncertainty attached which largely drives the large uncertainty in the estimated ICU/HDU bed demand for late March.


## Background

Due to the absence of systematic testing of symptomatic COVID-19 cases, and because of the substantial fraction of asymptomatic cases and mild disease, estimation of the current number of COVID-19 infections in England is challenging. To understand current transmission patterns, we focused on cases in Intensive Care Units (ICU), which are far less likely to be subject to under-reporting, albeit with the limitation that admission to ICU occurs later than onset of symptoms, meaning that this measurement provides information on infections than occurred further in the past than newly symptomatic cases. We first examine recent hospital and ICU admissions for COVID-19 patients and other Acute Respiratory Infections (ARI) in England. Then, we predict the number of COVID-19 cases who will need hospitalisation in ICU over the next 14 days, alongside projected bed occupancy.


## Methods

### Admissions to ICU

We used the COVID-19 Hospitalisations in England Surveillance System (CHESS) (as of: 18th March 2020) to examine current patterns of COVID-19 admissions. This dataset records daily admissions to hospital as well as to Intensive Care and High Dependency Units (ICU and HDU, all termed ICU in this report) for 109 NHS trusts, stratified by age group and two types of infections: acute respiratory infections (ARI), and confirmed COVID-19 cases. The total number of COVID-19 cases in ICU on the 18th March 2020 was used as a starting point in our forecasting of ICU admissions. Non-ICU admissions will just be referred to as 'hospital admissions'.

### Estimation of growth rate

The First Few Hundred (FF100) data (as of: 17th March 2020) was used to estimate the recent COVID-19 epidemic growth rate. We restricted the analysis to sporadic cases (i.e. those that cannot be traced to another confirmed case or importation), which are detected through either the Royal College of General Practitioners (RCGP) sentinel surveillance network, or through hospital-based critical care surveillance, which reflects cases in ICU. All but 3 of the cases were detected through the ICU system. The growth rate was estimated by fitting a log-linear model to daily incidence of "sporadic" cases (almost all of them picked up through the ICU system) using maximum likelihood. To account for delays between onset and report, the model was fitted to the "trusted" data only, i.e. data that were collected sufficiently far back in time that we are at least 95% sure that all data on that same day have been reported by the time of analysis. This is calculated by accounting for delay from onset to report, characterised as a discretised Gamma distribution, which was fitted using maximum likelihood. 

### Prediction of ICU admissions and bed occupancy

The log-linear model was used to predict cases admitted to ICU over time, based on the current number of COVID-19 admissions in ICU/HDU in England (n = 70 on the 18th March 2020). Bed occupancy was derived by combining these predictions with simulated duration of hospitalisation, drawn for each predicted case. Two discretised Weibull distributions were used to match recent estimations of the length of stay in ICU, with medians of 8 days (IQR: 4 - 12, 1), and 10 days (IQR: 5 - 14, 2), respectively. Predictions of ICU admissions and bed occupancy were made for 14 days ahead from the most recent data point (31st March 2020).


## Results

<!-- Figure 1A shows daily hospital and ICU admissions for ARI and COVID-19 cases by age class in the CHESS dataset. -->

The increase of ARI admissions over time until 16th March points to an increase in the number of trusts reporting to CHESS, so that temporal trends of COVID-19 cannot be assessed from this data yet. While COVID-19 infections represent a small fraction of regular hospital admission compared to other ARI, it forms a large fraction of ARI admissions in ICU. Importantly, COVID-19 admissions in ICU do not consist mostly of older age groups, with a large number of admissions in 25+ patients as well as several 1-4 children. 

<br>

<img src="figures/hosp_adm_CHESS.png" width="65%"> <br>
*Figure 1: Hospital admissions recorded in CHESS data (database as of 18th March 2020). A) Admissions reported over time. B) Breakdown of admissions by age class and COVID-19 status. Hospitals started reporting on 11th March. By 16th March almost all hospitals were reporting.
*

<br>

<img src="figures/cases_by_onset.png" width="65%"> <br>
*Figure 2: reported cases of COVID-19 by date of onset in FF100 (database from the 17th March 2020) A) Log-linear model fitted on sporadic cases (brown); the red line indicates trusted data (not impacted by reporting delays); plain and dashed lines indicate mean predictions and their confidence B) Projection of COVID-19 ICU admissions using the growth rate estimated in A, with a starting point of 70 COVID-19 patients in ICU on the 18th March 2020.*

<br>

Figure 2A shows reported sporadic cases and the associated log-linear model. The mean reporting delay was 7 days (IQR: 4 - 9), with a 95th percentile of 14 days used to define the trusted time period. We estimate a doubling time of 7 days with substantial uncertainty (IC95%: 3.8 - 41.4), corresponding to a daily growth rate of 0.1 (IC95%: 0.02 - 0.18). Applied to ICU data, our model predicts an average of 251 ICU admissions on 31 March 2020 (IC95%: 88 - 868, Figure 2B).

### Undereporting

As demand increases there is the potential for underreporting of cases presenting to each trust, yet based on the evidence so far the possible extent of this is unclear. We therefore assess three scenarios - 100%, 75% and 50% reporting - to understand how this could affect ICU demand estimates.

<br>

<img src="figures/proj_by_reporting.png" width="65%"> <br>
*Figure 3: Projected ICU demand in each of three possible reporting scenarios - 100%, 75% and 50% of cases reported.*

<br>


## Limitations
Log-linear models are very sensitive to changes in the growth rate, so that these results are likely to vary over the coming days. However, this uncertainty is largely reflected by the wide confidence intervals we reported.


## References

1.	Zhou, F. et al. Clinical course and risk factors for mortality of adult inpatients with COVID-19 in Wuhan, China: a retrospective cohort study. Lancet (2020) doi:10.1016/S0140-6736(20)30566-3.

2.	Madruga, J. V. et al. Efficacy and safety of darunavir-ritonavir compared with that of lopinavir-ritonavir at 48 weeks in treatment-experienced, HIV-infected patients in TITAN: a randomised controlled phase III trial. Lancet 370, 49-58 (2007).

