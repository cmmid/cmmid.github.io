---
# add the title of your project
title: Dynamics of B.1.617.2 in the UK from importations, traveller-linked and non-traveller-linked transmission

description: Analysis of B.1.617.2 dynamics in the UK.

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [transmission-dynamics]

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
# status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
# status: report
status: real-time-report
# status: comment-opinion-journal

# add the date at which post is updated (or the date of the initial post, if its the initial post) in YYYY-MM-DD
update: 2021-06-02

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: adam_kucharski
    corresponding: true
  - id: roz_eggo
  - id: nick_davies
  - id: seb_funk
  - id: ncov-group
---

**Read the [24th May report here.](reports/2021_05_24_importations.pdf)** Accompanying code is [available here](https://github.com/adamkucharski/covid-import-model).

Earlier versions of this analysis: [12th May report](https://www.gov.uk/government/publications/cmmid-covid-19-working-group-modelling-importations-and-local-transmission-of-b16172-in-the-uk-12-may-2021?utm_medium=email&utm_campaign=govuk-notifications&utm_source=44bb4abd-fb1b-42db-b903-08d94dfe0090&utm_content=immediately); [18th May report](reports/2021_05_18_importations.pdf).

Plot below shows results for 2nd June 2021. These results would suggest 40% (95% CrI: 25–54%) higher transmission for B.1.617.2 compared to non-B.1.617.2 variants circulating.

<img src="figures/2021_06_02_importations.png" width="80%" style="display: block; margin: auto;" />

Figure 1: A) Reported cases in India. B) Proportion of reported sequences in India that are B.1.617.2, with black line showing moving average (constrained to end at 100%). C) Estimated imported cases of B.1.617.2 into the UK that contribute to onwards transmission (orange line, with 95% shaded CrI interval), reported traveller cases of B.1.617.2 as described in [PHE Technical Report 12](https://www.gov.uk/government/publications/investigation-of-novel-sars-cov-2-variant-variant-of-concern-20201201) (black dots); simulated imported cases and onwards transmission using maximum a posteriori (MAP) model estimate (red line with 95% negative binomial CrI). D) Reported cases in the UK. Black dots show data, black line shows 7 day centred moving average; green line shows estimated non-B.1.617.2 cases with 95% CrI; red line as in (C); blue line and shaded region shows predicted total cases in UK with negative binomial 95% CrI. E) Black dots show number of non-B.1.617.2 sequences in COG-UK data up to 11th May 2021; green line shows fitted model with 95% negative binomial CrI. Grey region shows data in the past week, which is likely subject to reporting delays. F) Black dots show number of B.1.617.2 sequences in COG-UK data up to 11th May 2021; red line shows fitted model with 95% negative binomial CrI. G) Black dots show proportion of B.1.617.2 sequences in COG-UK data up to 11th May 2021; blue line shows MAP model estimate. H) Estimated change in R among non-travellers over time, assuming a step-change at some point during the observed period. Line shows median and shaded region 95% CrI; as in other panels, dashed grey line shows date B.1.617.2 was declared VOC in UK. I) Estimate of Rtraveller , Rnon-traveller and Rrecent in model, with thick line showing 50% CrI and thin line showing 95% CrI. Dots show implied R based on contact tracing data in PHE Technical Report 12.
