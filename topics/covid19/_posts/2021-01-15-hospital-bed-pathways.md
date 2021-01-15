---
title: "Importance of patient bed pathways and length of stay differences
in predicting COVID-19 bed occupancy in England."

description: "Using hospital and national level data, we describe the sequence of hospital beds occupied by patients with COVID-19. Our results suggest that national LoS averages may not be appropriate for local forecasts of bed occupancy for COVID-19."

tags: [healthcare-settings] 

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
status: paper-under-peer-review

# add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2021-01-15

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: quentin_leclerc
    corresponding: true
  - id: collaborators_bed_pathways
  - id: malcolm_semple
  - id: isaric4c_investigators
  - id: ncov-group
  - id: katherine_atkins
  - id: simon_procter
  - id: gwen_knight

---

**Objectives**

Predicting bed occupancy for hospitalised patients with COVID-19 requires understanding of length of stay (LoS) in particular bed types. LoS can vary depending on the patient's "bed pathway" - the sequence of transfers between bed types during a hospital stay. In this study, we characterise these pathways, and their impact on predicted hospital bed occupancy.

**Design**

We obtained data from University College Hospital (UCH) and the ISARIC4C COVID-19 Clinical Information Network (CO-CIN) on hospitalised patients with COVID-19 who required care in general ward or critical care (CC) beds to determine possible bed pathways and LoS. We developed a discrete-time model to examine the implications of using either bed pathways or only average LoS by bed type to forecast bed occupancy. We compared model-predicted bed occupancy to publicly available bed occupancy data on COVID-19 in England between March and August 2020.

**Results**

In both the UCH and CO-CIN datasets, 82% of hospitalised patients with COVID-19 only received care in general ward beds. We identified four other bed pathways, present in both datasets: "Ward, CC, Ward", "Ward, CC", "CC" and "CC, Ward". Mean LoS varied by bed type, pathway, and dataset, between 1.78 and 13.53 days.

For UCH, we found that using bed pathways improved the accuracy of bed occupancy predictions, while only using an average LoS for each bed type underestimated true bed occupancy. However, using the CO-CIN LoS dataset we were not able to replicate past data on bed occupancy in England, suggesting regional LoS heterogeneities. 

**Conclusions**

We identified five bed pathways, with substantial variation in LoS by bed type, pathway, and geography. This might be caused by local differences in patient characteristics, clinical care strategies, or resource availability, and suggests that national LoS averages may not be appropriate for local forecasts of bed occupancy for COVID-19.


**Read the full pre-print [here](https://www.medrxiv.org/content/10.1101/2021.01.14.21249791v1) and access the code and data [here](https://github.com/qleclerc/COVID_bed_occupancy).**

