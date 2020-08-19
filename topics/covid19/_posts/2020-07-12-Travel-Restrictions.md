---
title: "The effect of international travel restrictions on internal spread of COVID-19"

description: "Using flight data, prevalence estimates and incidence estimates combined, we calculate the ratio of expected imported cases and local incidence globally."

status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal

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

<img src="reports/global_travel_restrictions/figure_1_main.png" width="80%" style="display: block; margin: auto;" />
***Figure 1: Risk rating by country, in the absence of international travel restrictions, in each of the four scenarios about international travellers in May 2020. 
(A) Travel assumed to be at the same levels as May 2019. (B) Traveller numbers scaled downwards based on the reduction in flights in May 2020 reported by OpenSky. 
(C) Traveller numbers scaled down by 25%. (D) Traveller numbers scaled down by 50%.*

**[Read the full preprint here](reports/global_travel_restrictions/manuscript.pdf).**
**[and the supplementary information here](reports/global_travel_restrictions/supplementary.pdf).**

**Background:** Countries have restricted international arrivals to delay the spread of COVID-19. These measures carry a high economic and social cost. 
They may have little impact on COVID-19 epidemics if there are many more cases resulting from local transmission compared to imported cases.

**Methods**: To inform decisions about international travel restrictions, we compared the ratio of expected COVID-19 cases from international travel 
(assuming no travel restrictions) to the expected COVID-19 cases arising from internal spread on an average day in May 2020 in each country. 
COVID-19 prevalence and incidence were estimated using a modelling framework that adjusts reported cases for under-ascertainment and asymptomatic infections.

**Findings:** With May 2019 travel volumes, imported cases account for <10% of total incidence in 103 (95% credible interval: 76 - 130) out of 142 countries,
 and <1% in 48 (95% CrI: 9 - 95). If we assume that travel would decrease compared to May 2019 even in the absence of formal restrictions, 
 then imported cases account for <10% of total incidence in 109-123 countries and <1% in 61-88 countries (depending on the assumptions about travel reductions).

**Interpretation:** While countries can expect infected travellers to arrive inthe absence of travel restrictions, in most countries these imported 
cases likely contribute little to local COVID-19 epidemics. Stringent travel restrictions may have limited impact on epidemic dynamics except in 
countries with low COVID-19 incidence and large numbers of arrivals from other countries.

<img src="reports/global_travel_restrictions/figure_2.png" width="80%" style="display: block; margin: auto;" />
***Figure 2: Percentage reduction in passenger numbers required for countries in scenario B where imported cases account for more than 1% of local 
incidence to bring that proportion below 1%. Countries are grouped by United Nations Region (Oc. is Oceania).*

<img src="reports/global_travel_restrictions/figure_3.png" width="80%" style="display: block; margin: auto;" />
***Figure 3: Scatter plot showing the percentage of local daily incidence that daily imported cases represent, where the expected number of imported cases is at 
least 1% of local incidence. The dashed line represents 10% of local incidence from imported cases. NB: For New Zealand (NZL) and China (CHN),
 imported cases represent at least 100% of local incidence.
*
