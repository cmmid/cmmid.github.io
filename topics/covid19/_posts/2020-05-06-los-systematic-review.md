---
# add the title of your project
title: "COVID-19 length of hospital stay: a systematic review and data synthesis"
#add a description

description: We undertook a systematic review to look at the duration of hospital and ICU stay for patients with COVID-19

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [healthcare-settings] 

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
# status: report
# status: comment-opinion-online
# status: comment-opinion-journal

# add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-05-06

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: eleanor_rees
    equal: 1
    corresponding: true
  - id: emily_nightingale
    equal: 1
  - id: yalda_jafari
  - id: naomi_waterlow
  - id: sam_clifford
  - id: carl_ab_pearson
  - id: ncov-group
  - id: thibaut_jombart
  - id:  simon_procter
    equal: 2
  - id: gwen_knight
    equal: 2
    
---


**Background** The COVID-19 pandemic has placed an unprecedented strain on health systems, with rapidly increasing demand for healthcare in hospitals and intensive care units (ICUs) worldwide. As the pandemic escalates, determining the resulting needs for healthcare resources (beds, staff, equipment) has become a key priority for many countries. Projecting future demand requires estimates of how long patients with COVID-19 need different levels of hospital care.

**Method** We performed a systematic review to gather data on length of stay (LoS) of patients with COVID-19 in hospital and in ICU. We subsequently developed a method to generate LoS distributions which combines summary statistics reported in multiple studies, accounting for differences in sample sizes. Applying this approach we provide distributions for general hospital and ICU LoS from studies in China and elsewhere, for use by the community.

**Results** We identified 52 studies, the majority from China (46/52). Median hospital LoS ranged from 4 to 53 days within China, and 4 to 21 days outside of China, across 45 studies. ICU LoS was reported by eight studies - four each within and outside China - with median values ranging from 6 to 12 and 4 to 19 days, respectively. Our summary distributions have a median hospital LoS of 14 (IQR: 10-19) days for China, compared with 5 (IQR: 3-9) days outside of China. For ICU, the summary distributions are more similar (median (IQR) of 8 (5-13) days for China and 7 (4-11) days outside of China). There was a visible difference by discharge status, with patients who were discharged alive having longer LoS than those who died during their admission, but no trend associated with study date.

**Conclusion** Patients with COVID-19 in China appeared to remain in hospital for longer than elsewhere. This may be explained by differences in criteria for admission and discharge between countries, and different timing within the pandemic. In the absence of local data, the combined summary LoS distributions provided here can be used to model bed demands for contingency planning and then updated, with the novel method presented here, as more studies with aggregated statistics emerge outside China.


<img src="figures/losreview_gen.png" width="75%"> <br>
**Figure 1: Hospital length of stay, by discharge status.** Medians (square) are presented with interquartile range (IQR). Where estimates were reported as mean and standard deviation, equivalent quantiles have been calculated assuming a Weibull distribution (triangle); if no measure of variation was reported, only the original mean is presented (circle). The grey dashed lines represent the mean value across all point estimates within that setting, weighted by sample size.The studies are ordered by the study start date, with most recent at the top. Two studies (Shi et al. (2020-02-02) and Shi et al. (2020-01-23)) have multiple estimates for the same outcome which represent multiple treatment and comorbidity subgroups, respectively. Details of these are included in Table 1.

<img src="figures/losreview_icu.png" width="75%"> <br>
**Figure 2: ICU length of stay, by discharge status.** Medians (square) are presented with interquartile range (IQR). Where estimates were reported as mean and standard deviation, equivalent quantiles have been calculated assuming a Weibull distribution (triangle); if no measure of variation was reported, only the original mean is presented (circle). The grey dashed lines represent the mean value across all point estimates within that setting, weighted by sample size. Studies are ordered by the study start date.

<img src="figures/losreview_distributions.png" width="75%"> <br>
**Figure 3: Combined LOS distributions.** Samples from the overall LoS distributions, split by location (China or rest of world) and type (ICU vs General). For each subset, 100000 draws were taken. The x-axis was cut at days = 60.

Preprint available at medRxiv: <https://www.medrxiv.org/content/10.1101/2020.04.30.20084780v1.article-info>

