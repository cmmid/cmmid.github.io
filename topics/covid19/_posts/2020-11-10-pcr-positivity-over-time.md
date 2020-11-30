---
title: "Estimating the effectiveness of routine asymptomtatic PCR testing at
different frequencies for the detection of SARS-CoV-2 infections"

description: "Using data on twice weekly PCR testing of front-line healthcare
workers, we estimated individual infection times and probability of testing PCR
positive through time since infection."

status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal


# add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-11-24

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

**Background:**
Routine asymptomatic testing using RT-PCR of people who interact with
vulnerable populations, such as medical staff in hospitals or care workers in
care homes, has been employed to help prevent outbreaks among vulnerable
populations. Although the peak sensitivity of RT-PCR can be high, the
probability of detecting an infection will vary throughout the course of an
infection. The effectiveness of routine asymptomatic testing will therefore
depend on how testing and PCR detection varies over time.

**Methods:**
We fitted a Bayesian statistical model to a dataset of twice weekly PCR tests
of UK healthcare workers performed by self-administered nasopharyngeal swab,
regardless of symptoms. We jointly estimated times of infection and the
probability of a positive PCR test over time following infection, then compared
asymptomatic testing strategies by calculating the probability that a
symptomatic infection is detected before symptom onset and the probability that
an asymptomatic infection is detected within 7 days of infection.

**Findings:**
We estimated that the probability that the PCR test detected infection peaked
at 77% (95% credible interval (CrI): 54-88%) 4 days after infection, decreasing 
to 50% (95% CrI: 38-65%) by 10 days after infection. Our results suggest a 
substantially higher probability of detecting infections 1–3 days after 
infection than previously published estimates. We estimated that testing every
other day would detect 57% (95% CrI: 33-76%) of symptomatic cases prior to onset 
and 94% (95% CrI: 75-99%) of asymptomatic cases within 7 days if test results
were returned within a day.

**Interpretation:**
Our results suggest that routine asymptomatic testing can enable detection of a
high proportion of infected individuals early in their infection, provided that
the testing is frequent and the time from testing to notification of results is
sufficiently fast.

**[Read the full preprint here](reports/pcr_profile/manuscript_main_text.pdf) 
and [the supplementary material here](reports/pcr_profile/manuscript_supplementary_material.pdf).**

**[Reproduce our analysis using the code hosted here](https://github.com/cmmid/pcr-profile).**

<img src="reports/pcr_profile/figure3.png" width="80%" style="display: block; margin: auto;" />
**Main result (Figure 3): Estimation of positivity over time, and probability that different testing
frequencies with PCR would detect virus.**

<img src="reports/pcr_profile/figure1.png" width="80%" style="display: block; margin: auto;" />
**Figure 1: Estimation of positivity over time, and probability that different testing
frequencies with PCR would detect virus.** 

<img src="reports/pcr_profile/figure2.png" width="80%" style="display: block; margin: auto;" />
**Figure 2: The posterior of the infection time (Ti) of each participant.**
