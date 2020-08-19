---

# add the title of your project
title: A Modelling Study for Designing a Multi-layered Surveillance Approach to Detect the Potential Resurgence of SARS-CoV-2

description: We evaluated routine surveillance/ testing strategies that can act as early warning systems in China.

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [control-measures, healthcare-settings] 

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
    corresponding: true
  - id: Wenfeng Gong
  - id: sam_clifford
  - id: Maria E Sundaram
  - id: ncov-group
  - id: mark_jit
  - id: stefan_flasche
    equal: 2
  - id: petra_klepac
    equal: 2
    

# permalinks have changed
# make sure old urls still work by redirecting to this post
# redirect_from:
#   - /ncov/isolation_contact_tracing/

---
**Background:** Countries achieving control of COVID-19 after an initial outbreak will continue to face the risk of SARS-CoV-2 resurgence. This study explores surveillance strategies for COVID-19 containment based on polymerase chain reaction tests.  

**Methods:** Using a dynamic SEIR-type model to simulate the initial dynamics of a COVID-19 introduction, we investigate COVID-19 surveillance strategies among healthcare workers, hospital patients, and community members. We estimate surveillance sensitivity as the probability of COVID-19 detection using a hypergeometric sampling process. We identify test allocation strategies that maximise the probability of COVID-19 detection across different testing capacities. We use Beijing, China as a case study.  

**Findings:** Surveillance subgroups are more sensitive in detecting COVID-19 transmission when they are defined by more COVID-19 specific symptoms. In this study, fever clinics have the highest surveillance sensitivity, followed by respiratory departments. With a daily testing rate of 0.07/1000 residents, via exclusively testing at fever clinic and respiratory departments, there would have been 598 [95% eCI: 35, 2154] and 1373 [95% eCI: 47, 5230] cases in the population by the time of first case detection, respectively. Outbreak detection can occur earlier by including non-syndromic subgroups, such as younger adults in the community, as more testing capacity becomes available.  

**Interpretation:** A multi-layer approach that considers both the surveillance sensitivity and administrative constraints can help identify the optimal allocation of testing resources and thus inform COVID-19 surveillance strategies. 

**Funding:** Bill & Melinda Gates Foundation, National Institute of Health Research (UK), National Institute of Health (US), the Royal Society, and Wellcome Trust.

**Read the full pre-print [here](https://www.medrxiv.org/content/10.1101/2020.06.27.20141440v1) and find the code used [here](https://github.com/yangclaraliu/covid_surveillance_strategy).**

<img src="figures/surveillance.JPG" width="70%" style="display: block; margin: auto;" />
**Figure 1.** Likely scope of outbreak by the time of first COVID-19 detection. In a city like Beijing, testing at the rate of 0.04 and 0.07 per 1000 roughly translates to testing 800 and 1600 patients per day. The current routine testing level is approximately 2000 per day. We showed that targeted testing such as the on-going efforts in fever clinics could lead to earlier detection of community transmission. However, with the current level of efforts, it is unlikely detection can occur before cumulative incidence has exceed 100 cases.
