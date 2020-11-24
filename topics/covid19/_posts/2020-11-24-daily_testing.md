---

#add the title of your project
title: "Rapid testing strategies for traced contacts: comparing quarantine, quarantine and testing, and repeat daily testing" 

description: "Here we assess the merit of using lateral flow antigen (LFA) tests to allow for a shorter quarantine period by testing at its end, or to replace quarantine altogether by testing daily upon tracing and isolating only when test-positive." 

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
update: 2020-11-24

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author

authors:
  - id: billy_quilty
    corresponding: true
  - id: stefan_flasche
  - id: john_edmunds 
  - id: ncov-group


tags: [control-measures]
---

You can [download a copy of the full report here](reports/daily_testing_20201124.pdf) 

- Traced contacts of confirmed SARS-CoV-2 cases in the UK are currently asked to quarantine until 14 days have passed from their last exposure to the index case to avert onwards transmission of SARS-CoV-2.
- Here we assess the merit of using lateral flow antigen (LFA) tests to allow for a shorter quarantine period by testing at its end, or to replace quarantine altogether by testing daily upon tracing and isolating only when test-positive.
- We use an agent-based model of SARS-CoV-2 infection to simulate an exposed contact’s contact tracing delay, incubation period, probability of becoming symptomatic, infectivity profile, and time-varying probability of detection with PCR and LFA. 
- We find that testing on day 7 post-exposure with LFA may avert 46% (95% UI: 26, 64%) of onward transmission compared to 47% (95% UI: 30, 62%) with a 14-day post-exposure quarantine period with no testing, assuming a 3 day delay from testing of the index	case to isolation of contacts, 50% of contacts fully adhering to quarantine, and 67% of contacts fully adhering to post-symptom or post-positive test isolation. 
- If contacts are not required to quarantine, but instead undergo daily LFA tests for the 5 days after they are traced, 44% (95% UI: 23, 66%) of transmission may be prevented, accounting for current Test and Trace delays. 
- Daily repeated lateral flow testing may allow for the requirement to quarantine to be removed with a small increase in transmission risk, which could itself be offset by increased participation and adherence to isolation. As LFA testing reportedly has high sensitivity at high viral loads, cases may be detected and isolated as soon as they become infectious, averting subsequent transmission.
- However, the amount of transmission averted from secondary infections is limited by the delay from testing of the index case to isolation of contacts, and by the proportion of contacts who adhere to quarantine and self-isolation. By comparison, the potential loss in programme effectiveness through switching from a policy of 14 day quarantine to 7 day quarantine with a subsequent LFA test, or daily LFA testing upon tracing, is small.
