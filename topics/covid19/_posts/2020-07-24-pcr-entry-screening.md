---

# add the title of your project
title: Strategies to reduce the risk of SARS-CoV-2 re-introduction from international travellers

description: We simulated the arrival of travellers infected with SARS-CoV-2 from the EU and USA to the UK. We assessed the performance of various testing and screening policies in terms of reducing the number of travellers released while still infectious and the number of days they remain infectious.

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [control-measures] 

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
update: 2020-07-28

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: sam_clifford
    equal: 1
    corresponding: true
  - id: billy_quilty
    equal: 1
  - id: tim_russell
  - id: yang_liu
  - id: yungwai_chan
  - id: carl_ab_pearson
  - id: roz_eggo
  - id: akira_endo
  - id: ncov-group
  - id: stefan_flasche
    equal: 2 
  - id: john_edmunds
    equal: 2

# permalinks have changed
# make sure old urls still work by redirecting to this post
redirect_from:
  - /ncov/pcr_entry_screening/

---

You can [download a copy of the full report here](reports/pcr_entry_screening/2020-07-24-pcr-entry-screening.pdf) or [read the preprint here](https://www.medrxiv.org/content/10.1101/2020.07.24.20161281v2).

*Note: this report was last updated on 23 July 2020, using prevalence estimates from 20 July 2020.*

To mitigate SARS-CoV-2 transmission risks from international travellers, many countries currently use a combination of up to 14 days of self-quarantine on arrival and testing for active infection. We used a simulation model of air travellers arriving to the UK from the EU or the USA and the timing of their stages of infection to evaluate the ability of these strategies to reduce the risk of seeding community transmission. We find that a quarantine period of 8 days on arrival with a PCR test on day 7 (with a 1-day delay for test results) can reduce the number of infectious arrivals released into the community by a median 94% compared to a no quarantine, no test scenario. This reduction is similar to that achieved by a 14 day quarantine period (median 99% reduction). Shorter quarantine periods still can prevent a substantial amount of transmission; all strategies in which travellers spend at least 5 days (the mean incubation period) in quarantine and have at least one negative test before release are highly effective (e.g. a test on day 5 with release on day 6 results in a median 88% reduction in transmission potential). Without intervention, the current high prevalence in the US (40 per 10,000) results in a higher expected number of infectious arrivals per week (up to 23) compared to the EU (up to 12), despite an estimated 8 times lower volume of travel in July 2020.

Requiring a 14-day quarantine period likely results in less than 1 infectious traveller each entering the UK per week from the EU and the USA (97.5th percentile). We also find that on arrival the transmission risk is highest from pre-symptomatic travellers; quarantine policies will shift this risk increasingly towards asymptomatic infections if eventually-symptomatic individuals self-isolate after the onset of symptoms. As passenger numbers recover, strategies to reduce the risk of re-introduction should be evaluated in the context of domestic SARS-CoV-2 incidence, preparedness to manage new outbreaks, and the economic and psychological impacts of quarantine.

![Traveller trajectories for considered screening scenarios](figures/traveller_screening.svg)

Figure: Possible traveller trajectories for the considered screening scenarios. Screening (purple diamonds) occurs pre-flight and/or post-flight and may include managed quarantine periods (yellow boxes). Travellers found to be infected pre-flight are prevented from boarding (orange boxes pre-flight); travellers found to be infected during managed quarantine are diverted to mandatory quarantine (orange boxes post-flight). Travellers enter the community after the required number of negative tests (regardless of infection status) or after meeting the requirements of the mandatory quarantine.
