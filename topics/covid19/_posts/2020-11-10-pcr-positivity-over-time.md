---
title: "Estimating effectiveness of frequent PCR testing at different
intervals for detection of SARS-CoV-2 infections"

description: "Using data on twice weekly PCR testing of front-line healthcare
workers, we estimated individual infection times and probability of testing PCR
positive through time since infection."

status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal


# add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-11-10

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author 
authors:
  - id: joel_hellewell
    equal: 1
    corresponding: true
  - id: tim_russell
    equal: 1
  - id: safer_team
  - id: crick_consortium
  - id: ncov-group
  - id: rupert_beale
  - id: gavin_kelly
  - id: catherine_houlihan
  - id: eleni_nastouli
  - id: adam_kucharski

tags: [control-measures]
---

**Summary:** Using data on twice weekly PCR testing of front-line healthcare
workers, we estimated individual infection times and probability of testing PCR
positive through time since infection. Our results suggested that
PCR-positivity peaked at 4 days, with a peak detection probability of 78% (95%
Credible Interval: 55-89%). Using these estimates, we simulated testing
strategies and showed that frequent asymptomatic testing can increase the
probability of detection early in the infection period.

**[Read the full preprint here](reports/pcr_profile/pcr_profile_preprint.pdf).**

**[Reproduce our analysis using the code hosted here](https://github.com/cmmid/pcr-profile).**

<img src="reports/pcr_profile/figure3.png" width="80%" style="display: block; margin: auto;" />
**Main result (Figure 3): Estimation of positivity over time, and probability that different testing
frequencies with PCR would detect virus.**

<img src="reports/pcr_profile/figure1.png" width="80%" style="display: block; margin: auto;" />
**Figure 1: Estimation of positivity over time, and probability that different testing
frequencies with PCR would detect virus.** 

<img src="reports/pcr_profile/figure2.png" width="80%" style="display: block; margin: auto;" />
**Figure 2: The posterior of the infection time (Ti) of each participant.**
