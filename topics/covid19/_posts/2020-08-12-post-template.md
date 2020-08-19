---

# add the title of your project
title: The impact of non-pharmaceutical interventions on SARS-CoV-2 transmission across 130 countries and territories

description: We assessed the effectiveness of 13 groups of non-pharmaceutical interventions in reducing SARS-CoV-2 transmission using panel analysis and time-series clustering.

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [control-measures] 

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
update: 2020-08-19

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: yang_liu
    equal: 1
  - id: Christian Morgenstern
    equal: 1
  - id: James Kelly
  - id: rachel_lowe
  - id: ncov-group
  - id: mark_jit
    corresponding: true

# permalinks have changed
# make sure old urls still work by redirecting to this post
# redirect_from:
#   - /ncov/isolation_contact_tracing/

---

**Introduction:** Non-pharmaceutical interventions (NPIs) are used to reduce transmission of SARS coronavirus 2 (SARS-CoV-2) that causes coronavirus disease 2019 (COVID-19). However, empirical evidence of the effectiveness of specific NPIs has been inconsistent. We assessed the effectiveness of NPIs around internal containment and closure, international travel restrictions, economic measures, and health system actions on SARS-CoV-2 transmission in 130 countries and territories.  

**Methods:** We used panel (longitudinal) regression to estimate the effectiveness of 13 categories of NPIs in reducing SARS-CoV-2 transmission with data from January - June 2020. First, we examined the temporal association between NPIs using hierarchical cluster analyses. We then regressed the time-varying reproduction number (Rt) of COVID-19 against different NPIs. We examined different model specifications to account for the temporal lag between NPIs and changes in Rt, levels of NPI intensity, time-varying changes in NPI effect and variable selection criteria. Results were interpreted taking into account both the range of model specifications and temporal clustering of NPIs.  

**Results:** There was strong evidence for an association between two NPIs (school closure, internal movement restrictions) and reduced Rt. Another three NPIs (workplace closure, income support and debt/contract relief) had strong evidence of effectiveness when ignoring their level of intensity, while two NPIs (public events cancellation, restriction on gatherings) had strong evidence of their effectiveness only when evaluating their implementation at maximum capacity (e.g., restrictions on 1000+ people gathering were not effective, restrictions on <10 people gathering was). Evidence supporting the effectiveness of the remaining NPIs (stay-at-home requirements, public information campaigns, public transport closure, international travel controls, testing, contact tracing) was inconsistent and inconclusive. We found temporal clustering between many of the NPIs.  

**Conclusion:** Understanding the impact that specific NPIs have had on SARS-CoV-2 transmission is complicated by temporal clustering, time-dependent variation in effects and differences in NPI intensity. However, the effectiveness of school closure and internal movement restrictions appears robust across different model specifications taking into account these effects, with some evidence that other NPIs may also be effective under particular conditions. This provides empirical evidence for the potential effectiveness of many although not all the actions policy-makers are taking to respond to the COVID-19 pandemic.

**Read the full pre-print [here](https://www.medrxiv.org/content/10.1101/2020.08.11.20172643v1) and find the code used [here](https://github.com/yangclaraliu/COVID19_NPIs_vs_Rt).**