---
  
# add the title of your project
title: Changing Travel Patterns in Mainland China During the Early Stages of the COVID-2019 Pandemic

description: We examined human movement on multiple geographic scales to provide a complete picture of the overall dynamics while drawing links to their public health implications.

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [transmission-dynamics, lmic-considerations, control-measures] 

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
update: 2020-05-11

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
- id: hamish_gibbs
  equal: 1
  corresponding: true
- id: yang_liu
  equal: 1
- id: carl_ab_pearson
- id: chris_jarvis
- id: chris_grundy
- id: billy_quilty
- id: charlie_diamond
- id: ncov-group
- id: roz_eggo

---
**Abstract:** Understanding changes in human mobility in the early stages of the COVID-19 pandemic is crucial for assessing the impacts of travel restrictions designed to reduce disease spread. Here, we investigated the spatio-temporal characteristics of human mobility between 1st January and 1st March 2020. Relying on a range of techniques from trajectory clustering to network analysis, we examined human movement on multiple geographic scales to provide a complete picture of the overall dynamics while drawing links to their public health implications. An outbound travel surge from Wuhan before travel restrictions were implemented was also observed across China due to the Lunar New Year, indicating that holiday travel may have played a larger role in mobility changes compared to impending travel restrictions. Holiday travel also shifted healthcare pressure related to COVID-19 towards locations with lower access to care. Network analyses showed no sign of major changes in the transportation network after Lunar New Year. Changes observed were temporary and have not yet led to structural reorganisation of the transportation network at the time of this study.

<img src="figures/pandemic_travel_china_fig1.png" width="80%"/>
**Figure 1. Travel patterns between Wuhan and its neighbors.** The identified patterns of outbound travel from Wuhan: a), the daily outbound travel from Wuhan in 2019 and 2020; b), relative timing of first case detection stratified by clusters of similar trajectories, using Cluster A as the baseline. The distribution shows the mean effect size adjusted for surveillance intensity; c), distribution of resident population sizes of individual prefectures (points); d), map of prefectures and province-level cities showing the spatial distribution of trajectory clusters; e), outbound travel trends from Wuhan to the most connected prefectures in China, stratified by clusters of similar trajectories. The trajectories have been normalised by the total flow of each, to allow comparison of the profile. The pie charts show the total flux out of Wuhan prefecture by destinations in each cluster.

<img src="figures/pandemic_travel_china_fig3.png" width="80%"/>
**Figure 3. Human mobility, healthcare services availability, and COVID-19 related healthcare pressure.** A), The changes in traveller volume before (blue) and after (red) LNY. Net change is defined as inbound migration index minus outbound migration index. Thus, a negative change indicates more travellers leave than arrive while a positive value indicates more travellers arrive than leave. Solid line indicates the median level of healthcare access. B), The changes in the healthcare pressure (log10 scale) related to COVID-19 each week in low and high healthcare access prefectures. Healthcare access is measured by the number of hospitals per 100,000 residents. Healthcare pressure is measured by confirmed COVID-19 cases divided by healthcare access. Darker shade represents weeks when low healthcare access settings experienced significantly higher pressure than high healthcare access settings; lighter shade represents when differences are not significant based on Mann-Whitney U test. 

This [pre-print](reports/pandemic_travel_china_Manuscript.pdf) and [supplemental materials](reports/pandemic_travel_china_Supplement.pdf) are being submitted to medrxiv and the links will be updated after screening.
