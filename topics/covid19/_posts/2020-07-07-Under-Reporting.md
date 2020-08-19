---

#add the title of your project
title: "Reconstructing the global dynamics of unreported COVID-19 cases and infections"

description: "Using reported data on COVID-19 cases and fatalities globally, we estimated the proportion of symptomatic cases that were reported in 210 countries and territories. We then use these estimates to attempt to reconstruct the pandemic."

status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-07-07

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author 
authors:
  - id: tim_russell
    corresponding: true
  - id: nick_golding
  - id: joel_hellewell
  - id: sam_abbott
  - id: carl_ab_pearson
  - id: kevin_vanzandvoort
  - id: chris_jarvis
  - id: hamish_gibbs
  - id: yang_liu
  - id: roz_eggo
  - id: john_edmunds
  - id: adam_kucharski 


tags: [transmission-dynamics, control-measures]

---


**[Read the full preprint here](reports/UnderReporting.pdf).**

<img src="reports/under_reporting.png" width="70%" style="display: block; margin: auto;" />
***Figure 2: Confirmed case curves adjusted for temporal under-ascertainment. Panel A: Confirmed cases (left) and adjusted cases (right) for the ten
countries with the highest number of confirmed cases. Panel B: Confirmed cases (left) and adjusted cases (right) for the ten countries with the highest number
of confirmed cases after adjusting for under-ascertainment. There are two countries which change between panels A and B: France and Mexico are replaced
by Chile and Peru respectively. Panel C: The same curves plotted in panel A, but with a plot per country. Blue shaded region corresponds to the 95% CrI of
the adjusted curves. Panels A and B highlight between country variation whereas panel C highlights within country variation.*

**Background:** Asymptomatic or subclinical SARS-CoV-2 infections are often unreported, which means that confirmed case counts may not accurately reflect
underlying epidemic dynamics. Understanding the level of ascertainment (the ratio of confirmed symptomatic cases to the true number of symptomatic
individuals) and undetected epidemic progression is crucial to informing COVID-19 response planning, including the introduction and relaxation of
control measures. Estimating case ascertainment over time allows for accurate estimates of specific outcomes such as seroprevalence, which is essential for
planning control measures.

**Methods:** Using reported data on COVID-19 cases and fatalities globally, we estimated the proportion of symptomatic cases (i.e. any person with any of
fever >= 37.5°C, cough, shortness of breath, sudden onset of anosmia, ageusia or dysgeusia illness) that were reported in 210 countries and territories,
given those countries had experienced more than ten deaths. We used published estimates of the baseline case fatality ratio (CFR), which was adjusted for
delays and under-ascertainment, then calculated the ratio of this baseline CFR to an estimated local delay-adjusted CFR to estimate the level of
under-ascertainment in a particular location. We then fit a Bayesian Gaussian process model to estimate the temporal pattern of under-ascertainment.

**Results:** We estimate that, during March 2020, the median percentage of symptomatic cases detected across the 84 countries which experienced more than
ten deaths ranged from 2.38% (Bangladesh) to 99.6% (Chile). Across the ten countries with the highest number of total confirmed cases as of 6th July 2020,
we estimated that the peak number of symptomatic cases ranged from 1.4 times (Chile) to 17.8 times (France) larger than reported. Comparing our model with
national and regional seroprevalence data where available, we find that our estimates are consistent with observed values. Finally, we estimated
seroprevalence for each country. Despite low case detection in some countries, our results that adjust for this still suggest that all countries have had only
a small fraction of their populations infected as of July 2020.

**Conclusions:** We found substantial under-ascertainment of symptomatic cases, particularly at the peak of the first wave of the SARS-CoV-2 pandemic, in many countries.
Reported case counts will therefore likely underestimate the rate of outbreak growth initially and underestimate the decline in the later stages of an
epidemic. Although there was considerable under-reporting in many locations, our estimates were consistent with emerging serological data, suggesting that
the proportion of each country's population infected with SARS-CoV-2 worldwide is generally low.

