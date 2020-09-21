---
# add the title of your project
title: Estimating the time-varying reproduction number of SARS-CoV-2 using national and subnational case counts

description: Assessing temporal variations in transmission in different countries is essential for monitoring the epidemic, evaluating the effectiveness of public health interventions and estimating the impact of changes in policy.

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [control-measures] 

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
 status: real-time-report
# status: report
# status: comment-opinion-online
# status: comment-opinion-journal

# add the date at which post is updated (or the date of the initial post, if its the initial post) in YYYY-MM-DD
update: 2020-09-21

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: ncov-group
  - id: seb_funk
corresponding: true

# permalinks have changed
# make sure old urls still work by redirecting to this post


---

See [here](https://epiforecasts.io/covid/posts/global/) for further details and regularly updated estimates.


**Background:** Assessing temporal variations in transmission in different countries is essential for monitoring the epidemic, evaluating the effectiveness of public health interventions and estimating the impact of changes in policy.

**Methods:**  We use case and death notification data to generate daily estimates of the time-dependent reproduction number globally, regionally, nationally, and subnationally over a 12 week rolling window. Our modelling framework, based on open source tooling, accounts for uncertain reporting delays, so that the reproduction number is estimated based on underlying latent infections and not reported cases or deaths.

**Conclusions:**  This decision-support tool can be used to assess changes in virus transmission both globally, regionally, nationally, and subnationally. This allows public health officials and policymakers to track the progress of the outbreak in near real-time using an epidemioligcally valid measure. As well as providing regular updates on our website, we also provide an open source tool-set so that our approach can be used directly by researchers and policymakers on confidential data-sets. We hope that our tool will be used to support decisions in countries worldwide throughout the ongoing COVID-19 pandemic.
