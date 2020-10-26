---

# add the title of your project
title: Human movements can inform the spatial scale of interventions against COVID-19 transmission

description: We evaluated if Facebook for Good mobility data can provide information about movements within the UK during intervention periods and afterward.

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [transmission-dynamics,  control-measures] 

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
# status: report
# status: comment-opinion-online
# status: comment-opinion-journal

# add the date at which post is updated (or the date of the initial post, if its the initial post) in YYYY-MM-DD
update: 2020-10-26

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: hamish_gibbs
    corresponding: true
  - id: emily_nightingale
  - id: yang_liu
  - id: james_cheshire
  - id: leon_danon
  - id: liam_smeeth
  - id: carl_pearson
  - id: chris_grundy
  - id: ncov-group
  - id: adam_kucharski
  - id: roz_eggo
    corresponding: true

# permalinks have changed
# make sure old urls still work by redirecting to this post
#redirect_from:
#  - /ncov/isolation_contact_tracing/

---

The UK enacted an intensive, nationwide lockdown on March 23 2020 to mitigate transmission of COVID-19. As restrictions began to ease, resurgence in transmission has been targeted by geographically-limited interventions of various stringencies. Determining the optimal spatial scale for local interventions is critical to ensure interventions reach the most at risk areas without unnecessarily restricting areas at low risk of resurgence. Here we use detailed human mobility data from Facebook to determine the spatially-explicit network community structure of the UK before and during the lockdown period, and how that has changed in response to the easing of restrictions and to locally-targeted interventions. We found that the mobility network became more sparse and the number of mobility communities decreased under the national lockdown. During this period, there was no evidence of re-routing in the network. Communities in which locally-targeted interventions have happened following resurgence did not show reorganization but did show small decreases in measurable mobility effects in the Facebook dataset. We propose that geographic communities detected in Facebook or other mobility data be part of decision making for determining the spatial extent or boundaries of interventions in the UK. These data are available in near real-time, and allow quantification of changes in the distribution of the population across the UK, as well as people's travel patterns to give data-driven metrics for geographically-targeted interventions.

Please download the [main text](reports/Facebook_movement_analysis_UK-20201026.pdf) and [supplement](reports/Facebook_movement_analysis_UK-Supplemental-20201026.pdf) for more information.
