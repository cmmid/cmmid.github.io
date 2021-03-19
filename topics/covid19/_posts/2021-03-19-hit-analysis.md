---
# add the title of your project
title: The potential for vaccination-induced herd immunity against SARS-CoV-2

description: Comment piece on the feasibility of reaching the herd immunity threshold against SARS-CoV-2, drawing comparisons with other vaccine-preventable pathogens.

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [control-measures, comments-opinions]

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
# status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
# status: report
status: comment-opinion-online
# status: comment-opinion-journal

# add the date at which post is updated (or the date of the initial post, if its the initial post) in YYYY-MM-DD
update: 2021-03-19

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: david_hodgson
    corresponding: true
  - id: stefan_flasche
  - id: mark_jit
  - id: adam_kucharski
---

**Read the full report [here.](reports/hit_analysis.pdf) The R code to reproduce this analysis can be found [here.](https://github.com/adamkucharski/hit-analysis)**

Initial reports of vaccine effectiveness against SARS-CoV-2 suggests a substantial reduction in the risk of infection, but it remains unclear whether a large-scale immunisation programme against SARS-CoV-2 is able to generate lasting herd immunity, particularly in the presence of the highly transmissive B.1.1.7 variant. Our comment piece considers the feasibility of reaching the herd immunity threshold against SARS-CoV-2 in a fully vaccinated population and draws comparisons with other vaccine-preventable pathogens, including influenza and common immunising childhood infections. Our observations suggest that if highly transmissive variants become dominant in low seroprevalence regions, elimination in the absence of non-pharmaceutical interventions may only be possible with very high vaccine effectiveness and coverage among children as well as adults.

<img src="figures/hit_analysis_fig.pdf" width="80%" style="display: block; margin: auto;" />

**Figure: Comparison of vaccine impact and herd immunity thresholds for different vaccine-preventable viral diseases. A) Comparison of the effectiveness of currently available vaccines against the herd immunity threshold for different viruses. The black line shows the minimum vaccine effectiveness needed to achieve herd immunity for given R0 values. Colour points represent samples from available effectiveness and transmissibility estimates (see Appendix), with large points showing medians. If sampled points are above the line, vaccination of the entire population could in theory lead to epidemic control; the more samples that are above the line, the higher the probability of control. B) Vaccination coverage required to reach herd immunity for pre-B.1.1.7-like transmission and different levels of vaccine effectiveness. Line shows median and shaded region 95% Credible Interval. Blue, 90% effectiveness in reducing transmission; green, 70%; red 50%. C) Vaccination coverage required to reach herd immunity for B.1.1.7-like transmission. Data sources are provided in the supplementary appendix.**
