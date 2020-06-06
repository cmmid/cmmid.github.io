---
title: "The effect of non-pharmaceutical interventions on COVID-19 cases, deaths and demand for hospital services in the UK: a modelling study"

description: We use a stochastic age-structured transmission model to explore a range of COVID-19 intervention scenarios in the UK, including the introduction of school closures, social distancing, shielding of elderly groups, self-isolation of symptomatic cases, and extreme "lockdown"-type restrictions.

# this is a legacy status and should be changed to one of the newer ones
# status: paper-accepted-at-journal
# status: paper-under-peer-review
# status: paper-accepted-at-journal
status: paper-published-at-journal
# status: real-time-report
# status: report
# status: comment-opinion-online
# status: comment-opinion-journal

authors:
  - id: nick_davies
    corresponding: true#permalinks have changed
  - id: adam_kucharski
    equal: 1
  - id: roz_eggo
    equal: 1
  - id: ncov-group
  - id: john_edmunds

update: 2020-06-06

redirect_from:
- /topics/covid19/control-measures/uk-scenario-modelling.html

tags: [control-measures]
---
**Background:** Non-pharmaceutical interventions have been implemented to reduce transmission of SARS-CoV-2 in the UK. Projecting the size of an unmitigated epidemic and the potential effect of different control measures has been critical to support evidence-based policymaking during the early stages of the epidemic.

**Methods:** We used a stochastic age-structured transmission model to explore a range of intervention scenarios, including the introduction of school closures, social distancing, shielding of elderly groups, self-isolation of symptomatic cases, and extreme “lockdown”-type restrictions. We simulated different durations of interventions and triggers for introduction, as well as combinations of interventions. For each scenario, we projected estimated new cases over time, patients requiring inpatient and critical care (intensive care unit, ICU) treatment, and deaths.

**Findings:** We found that mitigation measures aimed at reducing transmission would likely have decreased the reproduction number, but not sufficiently to prevent ICU demand from exceeding NHS availability. To keep ICU bed demand below capacity in the model, more extreme restrictions were necessary. In a scenario where “lockdown”-type interventions were put in place to reduce transmission, these interventions would need to be in place for a large proportion of the coming year in order to prevent healthcare demand exceeding availability.

**Interpretation:** The characteristics of SARS-CoV-2 mean that extreme measures are likely required to bring the epidemic under control and to prevent very large numbers of deaths and an excess of demand on hospital beds, especially those in ICUs.

**Read the published paper [here](https://www.thelancet.com/journals/lanpub/article/PIIS2468-2667(20)30133-X/fulltext)**.

<img src="figures/fig-lockdown.png" width="100%"/>
*Figure:* Projected impact of intensive control measures with reactive lockdowns. (a) Dynamics of the epidemic under different triggers for introduction and lifting of lockdowns (median timing of lockdowns shown as grey shaded areas). Bolded lines show ICU bed occupancy in the median run under each scenario. Horizontal guides show the estimated number of ICU beds in the UK as of January 2020 (solid line) and with a hypothetical doubling of capacity (dashed line). Blue shaded regions show school closures, while the pink shaded region shows a background period of intensive interventions. (b) Summary of epidemic runs. (c) Estimated distribution of R0 under three different interventions: intensive social distancing with schools open and closed, and lockdown.

Source code available @ GitHub: <https://github.com/cmmid/covid-uk>
