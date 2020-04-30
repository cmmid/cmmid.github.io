---

# add the title of your project
title: Projections of COVID-19 epidemics in LMIC countries

description: Projected epidemics in LMIC with and without interventions

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [lmic-considerations, control-measures, forecasts-and-projections] 

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
# status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
 status: report
# status: comment-opinion-online
# status: comment-opinion-journal

# add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-04-30

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: ncov-group

# permalinks have changed
# make sure old urls still work by redirecting to this post

---

Enclosed is a series of country-specific reports of projected COVID-19 epidemics.  

These reports are based on a model developed in CMMID at LSHTM, first used [here](https://cmmid.github.io/topics/covid19/age_hypotheses.html), and used to show the effect of mitigation measures [in the UK](https://cmmid.github.io/topics/covid19/uk-scenario-modelling.html). A paper on the shielding methodology is available [here](https://cmmid.github.io/topics/covid19/covid-response-strategies-africa.html).

These simulation results will likely change as we learn more about spread in LMIC settings and update the reports accordingly.

- This report provides simulation-based estimates for COVID-19 epidemic scenarios in each country. 
- The model accounts for the local agestructure, as well as uncertainty in transmission due to uncertainty in 𝑅..
- We consider an unmitigated epidemic (i.e., no intervention), and then interventions combining social distancing and shielding interventions.
- We estimate predicted peak counts and timing for each country in new symptomatic cases and deaths (incidence), as well as peaks in daily hospital demand (prevalence). We also calculated totals for these values, and compute the impact of the interventions relative to an unmitigated epidemic.
- Populations are based on demographics of each country and estimated contact patterns, and assume a single national population
- The transmission model is based on global outbreak data, which have primarily been observed in East Asia, Europe, and North America.
- Severity rates are rescaled to LMIC, because we assumed that due to comorbidities, LMIC populations may have higher rates of symptomatic disease.
- Epidemic simulations start with 50 initial infections, proportionally distributed according to the age demography of the country. 

- These reports will be updated as information changes, and if LMIC information on hospitalisation rates become available.
- All numerical results are reported to two significant figures only, and are reported as interquartile (IQR) and 95% intervals.
- Detailed modelling methods are given at the end of the report.

Reports can be downloaded [from here](rhttps://www.dropbox.com/sh/m3n6qjesd7v3rd0/AAC0OblfX-8sVyIuGCsqSZjMa?dl=0).
The source code for the generation of these reports is maintained at [Github](https://github.com/cmmid/covidm_reports/)
The raw simulation outputs (R binary files) can be made available upon request, to be used in other analyses, please contact Carl Pearson.