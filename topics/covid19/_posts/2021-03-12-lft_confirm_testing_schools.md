---
# add the title of your project
title: Confirmatory testing with a second lateral flow test may mitigate false positives at low levels of SARS-CoV-2 prevalence in English schools

description: Estimating the effect of using a follow-up PCR or lateral-flow test (LFT) upon a positive initial LFT in the mass asymptomatic testing of students in England.

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [control-measures, comments-opinions]

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
# status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
status: report
# status: comment-opinion-online
# status: comment-opinion-journal

# add the date at which post is updated (or the date of the initial post, if its the initial post) in YYYY-MM-DD
update: 2021-03-12

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: billy_quilty
    corresponding: true
  - id: joel_hellewell
  - id: sam_clifford
  - id: ncov-group
---

**Read the full report [here.](reports/lft_confirm_testing_schools.pdf) The R code to reproduce this analysis can be found [here.](reports/lft_confirm_code.R)**

- There is currently concern over the possibility of false-positive lateral flow test (LFT) results in the mass asymptomatic testing programme in English schools, with calls for positive LFTs to be confirmed by Polymerase Chain Reaction (PCR) tests.
- However, delays in isolating cases and their contacts due to PCR test delays may lead to increased transmission risk and should be avoided unless strictly necessary.
- Here we show that, at current levels of prevalence in schoolchildren (~0.43%), the chance of a positive test being a true positive (Positive Predictive Value, PPV) is high (88%) and prevalence would need to decrease to below 0.05% in order for the number of false-positive test results to outnumber true positives.
- Were prevalence to decrease below 0.05%, a confirmatory LFT would increase PPV to >99.97%, similar to that of a confirmatory PCR (>99.99%).
- Following up an initial positive LFT with a second LFT provides a high PPV, minimises disruption, and enables faster case isolation and contact tracing than a confirmatory PCR test.
- This analysis makes the assumption that LFT test results are independent of each other, which may overestimate the joint specificity and underestimate the joint sensitivity.


<img src="figures/predictive_plot_linear.png" width="80%" style="display: block; margin: auto;" />

**Figure: Positive and Negative Predictive Value for different testing strategies at varying levels of prevalence. Coloured lines and bands indicate the median and 95% CI for PPV and NPV for sampled values of prevalence, assuming the same coefficient of variation as current prevalence estimates. Solid and dashed vertical lines are approximate median and 95% CIs of current SARS-CoV-2 prevalence in school children.**

