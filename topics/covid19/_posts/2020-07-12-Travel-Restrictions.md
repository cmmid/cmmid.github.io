---
title: "Effect of internationally imported cases on internal spread of COVID-19"

description: "Using flight data, prevalence estimates and incidence estimates combined, we calculate the ratio of expected imported cases and local incidence globally."

# status: paper-under-peer-review
# status: paper-accepted-at-journal
status: paper-published-at-journal

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-07-12

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author 
authors:
  - id: tim_russell
  - id: Joseph Wu
  - id: sam_clifford
  - id: ncov-group
  - id: john_edmunds
  - id: adam_kucharski
  - id: mark_jit
    corresponding: true

tags: [transmission-dynamics, control-measures]
---

This work is now published at [The Lancet Public Health](https://www.thelancet.com/journals/lanpub/article/PIIS2468-2667(20)30263-2/fulltext) and the code for the analysis in the paper can be found [here](https://github.com/thimotei/covid_travel_restrictions) and the code for the underlying model can be found [here](https://github.com/thimotei/CFR_calculation)

**Background**
Countries have restricted international arrivals to delay the spread of severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2). These measures carry a high economic and social cost, and might have little effect on COVID-19 epidemics if there are many more cases resulting from local transmission compared with imported cases. Our study aims to investigate the extent to which imported cases contribute to local transmission under different epidemic conditions.

**Methods**
To inform decisions about international travel restrictions, we calculated the ratio of expected COVID-19 cases from international travel (assuming no travel restrictions) to expected cases arising from internal spread, expressed as a proportion, on an average day in May and September, 2020, in each country. COVID-19 prevalence and incidence were estimated using a modelling framework that adjusts reported cases for under-ascertainment and asymptomatic infections. We considered different travel scenarios for May and September, 2020: an upper bound with estimated travel volumes at the same levels as May and September, 2019, and a lower bound with estimated travel volumes adjusted downwards according to expected reductions in May and September, 2020. Results were interpreted in the context of local epidemic growth rates.

**Findings**
In May, 2020, imported cases are likely to have accounted for a high proportion of total incidence in many countries, contributing more than 10% of total incidence in 102 (95% credible interval 63–129) of 136 countries when assuming no reduction in travel volumes (ie, with 2019 travel volumes) and in 74 countries (33–114) when assuming estimated 2020 travel volumes. Imported cases in September, 2020, would have accounted for no more than 10% of total incidence in 106 (50–140) of 162 countries and less than 1% in 21 countries (4–71) when assuming no reductions in travel volumes. With estimated 2020 travel volumes, imported cases in September, 2020, accounted for no more than 10% of total incidence in 125 countries (65–162) and less than 1% in 44 countries (8–97). Of these 44 countries, 22 (2–61) had epidemic growth rates far from the tipping point of exponential growth, making them the least likely to benefit from travel restrictions.

**Interpretation**
Countries can expect travellers infected with SARS-CoV-2 to arrive in the absence of travel restrictions. Although such restrictions probably contribute to epidemic control in many countries, in others, imported cases are likely to contribute little to local COVID-19 epidemics. Stringent travel restrictions might have little impact on epidemic dynamics except in countries with low COVID-19 incidence and large numbers of arrivals from other countries, or where epidemics are close to tipping points for exponential growth. Countries should consider local COVID-19 incidence, local epidemic growth, and travel volumes before implementing such restrictions.
