---
title: "The Contribution of Pre-symptomatic Transmission to the COVID-19 Outbreak"

description: We estimate the proportion of observed cases that may have been caused by during the pre-symptomatic period of the corresponding primary cases.

# this is a legacy status and should be changed to one of the newer ones
status: in-progress
# status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
# status: report
# status: comment-opinion-online
# status: comment-opinion-journal

authors:
- id: yang_liu
- id: ncov-group
- id: seb_funk
- id: stefan_flasche

update: 2020-03-16

redirect_from:
- /topics/covid19/control-measures/pre-symptomatic-transmission.html

tags: [control-measures]
---
**Background:** Pre-symptomatic transmission can be a key determinant of the effectiveness of containment and mitigation strategies for infectious diseases, particularly if interventions rely on syndromic case finding. For COVID-19, infections in the absence of apparent symptoms have been reported frequently alongside circumstantial evidence for asymptomatic or pre-symptomatic transmission. We estimated the potential contribution of pre-symptomatic cases to COVID transmission.

**Methods:** Using the probability for symptom onset on a given day inferred from the incubation period, we attributed the serial interval reported from Shenzen, China, into likely pre-symptomatic and symptomatic transmission. We used the serial interval derived for cases isolated more than 6 days after symptom onset as the no active case finding scenario and the unrestricted serial interval as the active case finding scenario. We reported the estimate assuming no correlation between the incubation period and the serial interval alongside a range indicating alternative assumptions of positive and negative correlation.

**Results:** We estimated that 23% (range accounting for correlation: 12 - 28%) of transmissions in Shenzen may have originated from pre-symptomatic infections. Through accelerated case isolation following symptom onset, this percentage increased to 46% (21 - 46%), implying that about 35% of secondary infections among symptomatic cases have been prevented. These results were robust to using reported incubation periods and serial intervals from other settings.

**Conclusions:** Pre-symptomatic transmission may be essential to consider for containment and mitigation strategies for COVID-19.


<img src="figures/Prob_Asym_Stacked.png" width="65%"/>
*Figure 1:* Estimated attribution of the serial interval into pre-symptomatic transmission and symptomatic transmission for (A) no active case finding and (B) active case finding and accelerated case isolation. These estimates assume uncorrelated incubation period and serial interval estimates from Shenzen.

This study works with secondary data already collected by existing studies:
- Li, Qun, et al. "Early transmission dynamics in Wuhan, China, of novel coronavirus–infected pneumonia." New England Journal of Medicine (2020).
- Nishiura, Hiroshi, Natalie M. Linton, and Andrei R. Akhmetzhanov. "Serial interval of novel coronavirus (COVID-19) infections." International Journal of Infectious Diseases (2020).
- Bi, Qifang, et al. "Epidemiology and Transmission of COVID-19 in Shenzhen China: Analysis of 391 cases and 1,286 of their close contacts". MedRXiv (2020).

Data available @ Zenodo: yangclaraliu/2019nCoV_proportion_asym: WOR Submission. https://doi.org/10.5281/zenodo.3709942  \[1\].

Source code available @ GitHub: <https://github.com/yangclaraliu/2019nCoV_proportion_asym>


References
----------
1 Liu Y, Centre for the Mathematical Modelling of Infectious Disease COVID-19 Working Group, Funk S, Flasche S. yangclaraliu/2019nCoV_proportion_asym: WOR Submission. Version 1.0 Zenodo. <https://zenodo.org/record/3709942#.XmwDN877SUk>
