---

#add the title of your project
title: "Test to release from isolation after testing positive for SARS-CoV-2" 

description: "Using a model of individual infectiousness and testing with lateral flow tests (LFT), we evaluate test-to-release policies against conventional fixed-duration isolation policies in terms of excess days of infectiousness, days saved, and tests used." 

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
# status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
status: report
# status: comment-opinion-online
# status: comment-opinion-journal

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2021-12-30

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author

authors:
  - id: billy_quilty
    corresponding: true
  - id: juliet_pulliam 
  - id: carl_ab_pearson

tags: [control-measures]

---

<img src="figures/main_plot2_vacc.png" width="80%" style="display: block; margin: auto;" />
Figure: Comparison of policy outcomes for vaccinated populations. A) Number of days saved vs. a 10-day isolation policy per individual and B) days infectious in the community per 10,000 infected individuals following release from isolation for 3, 5, and 7 days wait after an initial positive test to initiate testing and number of consecutive days of negative tests required for release. Points indicate median and error bars represent the 95% uncertainty interval. For days saved, the first day testing positive is considered the minimum mandatory isolation, so for example, a “3 day wait” is equal to 1 day + 3 days wait to then test again on day 4.

**Summary** 

- The rapid spread and high transmissibility of the Omicron variant of SARS-CoV-2 is likely to lead to a significant number of key workers testing positive simultaneously.
- Under a policy of self-isolation after testing positive, this may lead to extreme staffing shortfalls at the same time as e.g. hospital admissions are peaking.
- Using a model of individual infectiousness and testing with lateral flow tests (LFT), we evaluate test-to-release policies against conventional fixed-duration isolation policies in terms of excess days of infectiousness, days saved, and tests used.
- We find that the number of infectious days in the community can be reduced to almost zero by requiring at least 2 consecutive days of negative tests, regardless of the number of days’ wait until testing again after initially testing positive.
- On average, a policy of fewer days’ wait until initiating testing (e.g 3 or 5 days) results in more days saved vs. a 10-day isolation period, but also requires a greater number of tests.
- Due to a lack of specific data on viral load progression, infectivity, and likelihood of testing positive by LFT over the course of an Omicron infection, we assume the same parameters as for pre-Omicron variants and explore the impact of a possible shorter proliferation phase.


**Read the pre-print [here](reports/2021-12-30-test-to-release_v2.pdf).** Accompanying code can be found [here.](https://github.com/bquilty25/daily_testing)
