---

#add the title of your project
title: "Quarantine and testing strategies in contact tracing for SARS-CoV-2" 

description: "We evaluate the ability of different quarantine and testing strategies to reduce the transmission potential of traced secondary cases, accounting for PCR and lateral-flow antigen test sensitivities, test and trace delays, and varying levels of adherence." 

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
# status: report
# status: comment-opinion-online
# status: comment-opinion-journal

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-12-04

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
  - id:joel_hellewell
    equal: 2 
  - id: tim_russell
    equal: 2
  - id: adam_kucharski
  - id: ncov-group
  - id: stefan_flasche
  - id: john_edmunds
  

tags: [control-measures]
---

You can [download a copy of the full report here](reports/quar_test_contact_tracing/2020-12-04-quar_test_contact_tracing.pdf)

**Background:** In most countries, contacts of confirmed COVID-19 cases are asked to quarantine for 14 days following exposure to limit asymptomatic onward transmission. We assessed the merit of testing contacts to avert transmission as well as to replace or reduce the length of quarantine for uninfected contacts.

**Methods:** We used an agent-based model to simulate the viral load dynamics of exposed contacts, their probability of detection over time, and their potential for onwards transmission in different quarantine and testing strategies. We compare the performance of quarantine, quarantine and testing with polymerase chain reaction (PCR) or lateral flow antigen (LFA) tests, and daily LFA testing without quarantine, against the current 14 day quarantine strategy.

**Findings:** Assuming moderate levels of adherence to quarantine and self-isolation, self-isolation on symptom onset alone can prevent 37% (95% UI: 12%, 56%) of onward transmission potential from secondary cases. 14 days of post-exposure quarantine reduces transmission by 59% (95% UI: 28%, 79%). Quarantine with an LFA test 7 days after exposure or daily testing without quarantine for 5 days after tracing may avert a similar proportion (risk ratios of 0.88 (95% UI: 0.66, 1.11) and 0.88 (95% UI: 0.60, 1.43), respectively) compared to that of the 14 day quarantine, with greater benefit possible if individuals isolate more strictly after a positive test.

**Interpretation:** Testing may allow for a substantial reduction in the length of, or replacement of quarantine with a small excess in transmission risk. Decreasing test and trace delays and increasing adherence will further increase the effectiveness of these strategies.

**Funding:** National Institute for Health Research, UK Research and Innovation, Wellcome Trust, Bill & Melinda Gates Foundation, and EU Horizon 2020.

