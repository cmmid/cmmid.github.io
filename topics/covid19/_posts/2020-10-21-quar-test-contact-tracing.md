---

#add the title of your project
title: "Quarantine and testing strategies in contact tracing for SARS-CoV-2: a modelling study" 

description: "We evaluate the ability of different quarantine and testing strategies to reduce the transmission potential of traced secondary cases, accounting for PCR and lateral-flow antigen test sensitivities, test and trace delays, and varying levels of adherence." 

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
#status: paper-under-peer-review
# status: paper-accepted-at-journal
status: paper-published-at-journal
# status: real-time-report
# status: report
# status: comment-opinion-online
# status: comment-opinion-journal

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2021-01-21

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
  - id: joel_hellewell
    equal: 2 
  - id: tim_russell
    equal: 2
  - id: adam_kucharski
  - id: ncov-group
  - id: stefan_flasche
  - id: john_edmunds
  

tags: [control-measures]

#make sure old urls still work
redirect_from:
- /topics/covid19/_posts/2020-11-24-daily_testing.html
---



**Background:** In most countries, contacts of confirmed COVID-19 cases are asked to quarantine for 14 days after exposure to limit asymptomatic onward transmission. While theoretically effective, this policy places a substantial social and economic burden on both the individual and wider society, which might result in low adherence and reduced policy effectiveness. We aimed to assess the merit of testing contacts to avert onward transmission and to replace or reduce the length of quarantine for uninfected contacts.

**Methods:** We used an agent-based model to simulate the viral load dynamics of exposed contacts, and their potential for onward transmission in different quarantine and testing strategies. We compared the performance of quarantines of differing durations, testing with either PCR or lateral flow antigen (LFA) tests at the end of quarantine, and daily LFA testing without quarantine, against the current 14-day quarantine strategy. We also investigated the effect of contact tracing delays and adherence to both quarantine and self-isolation on the effectiveness of each strategy.

**Findings:** Assuming moderate levels of adherence to quarantine and self-isolation, self-isolation on symptom onset alone can prevent 37% (95% uncertainty interval [UI] 12–56) of onward transmission potential from secondary cases. 14 days of post-exposure quarantine reduces transmission by 59% (95% UI 28–79). Quarantine with release after a negative PCR test 7 days after exposure might avert a similar proportion (54%, 95% UI 31–81; risk ratio (RR) 0·94, 95% UI 0·62–1·24) to that of the 14-day quarantine period, as would quarantine with a negative LFA test 7 days after exposure (50%, 95% UI 28–77; RR 0·88, 0·66–1·11) or daily testing without quarantine for 5 days after tracing (50%, 95% UI 23–81; RR 0·88, 0·60–1·43) if all tests are returned negative. A stronger effect might be possible if individuals isolate more strictly after a positive test and if contacts can be notified faster.

**Interpretation:** Testing might allow for a substantial reduction in the length of, or replacement of, quarantine with a small excess in transmission risk. Decreasing test and trace delays and increasing adherence will further increase the effectiveness of these strategies. Further research is required to empirically evaluate the potential costs (increased transmission risk, false reassurance) and benefits (reduction in the burden of quarantine, increased adherence) of such strategies before adoption as policy.

**Funding:** National Institute for Health Research, UK Research and Innovation, Wellcome Trust, EU Horizon 2021, and the Bill & Melinda Gates Foundation.

**Read the published paper [here](https://www.thelancet.com/journals/lanpub/article/PIIS2468-2667(20)30308-X/fulltext).**
