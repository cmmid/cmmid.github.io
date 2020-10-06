---

#add the title of your project
title: Quarantine and testing strategies in contact tracing for SARS-CoV-2 

description: We evaluate the ability of different quarantine and testing strategies to reduce the transmission potential of traced secondary cases, accounting for test and trace delays, and varying levels of adherence. 

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
update: 2020-10-06

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author

authors:
  - id: billy_quilty
    equal: 1
    corresponding: true
  - id: sam_clifford
    equal: 1 
  - id: stefan_flasche
  - id: adam_kucharski
  - id: john_edmunds

tags: [control-measures]
---

You can [download a copy of the full report here](reports/quar_test_contact_tracing/2020-10-06-quar_test_contact_tracing.pdf)

As in many other countries, contacts traced through the NHS Test and Trace scheme in England are asked to quarantine for 14 days from the day they were exposed to the index case, to minimise the risk for pre-symptomatic and asymptomatic onward transmission. However, the standard quarantine period could be reduced for negative contacts if combined with PCR testing to assess SARS-CoV-2 negative status. 

We used a simulation model for contact tracing, accounting for the incubation period, infectivity profile, and time-varying probability of detection by PCR to estimate the transmission potential of traced contacts averted by different durations of quarantine and number of tests. We also investigated the effect of reducing test and tracing delays, and reduced adherence to quarantine guidance.

Assuming perfect adherence to quarantine and self-isolation upon symptom onset, we find that a negative PCR test on day 10 of the quarantine would reduce the transmission potential from secondary cases similarly to the current 14 day quarantine rule: 68% (50% UI: 37, 100%) vs. 70% (50% UI: 38, 90%), respectively. A PCR test taken on the day of tracing would avert 57% of transmission potential on average (50% UI: 25%, 81%). Halving observed delays from having a test to the tracing of contacts to an average of 2 days reduces the pre-tracing transmission potential to 11% (50% UI: 2%, 27%) compared to 29% (50% UI: 8, 62%) with an average 4 day delay. Poor adherence greatly reduces the transmission potential averted (7% (50% UI: 4, 90%) using a reported 10% adherence rate in the UK for a 14 day quarantine).

PCR testing may allow for a reduction in the duration of quarantine of traced contacts from 14 to 10 days without increasing the risk for onward transmission. Testing immediately after tracing could further reduce quarantine but would slightly increase the transmission risk. Multiple testing provided little additional benefit. Reducing delays and increasing adherence are likely to increase the ability of test, trace, isolate to reduce transmission above that of the introduction of PCR testing. 

