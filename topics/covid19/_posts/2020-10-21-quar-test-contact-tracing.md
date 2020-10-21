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
update: 2020-10-21

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

You can [download a copy of the full report here](reports/quar_test_contact_tracing/2020-10-18-quar_test_contact_tracing.pdf)

In most countries, contacts of confirmed COVID-19 cases are asked to quarantine for 14 days following exposure, to limit asymptomatic onward transmission. We assessed the merit of RT-PCR testing in reducing the length of quarantine, using the UK as a case study.
We used an agent-based model to simulate an exposed contact’s  contact tracing detecting delay, incubation period, probability to become symptomatic, infectivity profile, and time-varying PCR detection probability. Assuming self-isolation on symptom onset, we assess the impact of the current 14 day quarantine strategy for all exposed contacts on their onward transmission potential and compare to alternative  quarantine lengths with or without  PCR tests during quarantine.
Self-isolation on symptoms onset alone can prevent 39% (95% Uncertainty Interval for super spreading events: 34, 45%) of onward transmission from secondary cases. An additional 14 days post-exposure quarantine for all contacts reduces transmission by 70% (95% UI: 39, 90%). A negative PCR test taken upon tracing or 7 days after exposure can reduce transmission by 62% (95% UI: 40, 84%) or 68% (95% UI: 40, 88%) respectively. Halving contact tracing delays of currently 4 days reduces pre-tracing transmission potential from 26% (95% UI: 7, 56%) to 14% (95% UI: 5, 42%).
PCR testing may allow for a substantial reduction in quarantine needs or even replacing quarantine requirements with no or a small excess in transmission risk respectively. Reducing contact tracing delays can help prevent a substantial amount of transmission.

