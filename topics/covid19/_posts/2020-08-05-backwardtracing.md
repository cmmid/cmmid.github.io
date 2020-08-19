---

#add the title of your project
title: "Implication of backward contact tracing in the presence of overdispersed transmission in COVID-19 outbreaks"

description: "We explored the potential of combining backward contact tracing with more conventional forward contact tracing for control of COVID-19."

status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-08-05

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author 
authors:
  - id: akira_endo
    corresponding: true
  - id: quentin_leclerc
  - id: gwen_knight
  - id: graham_medley
  - id: katherine_atkins
  - id: seb_funk
  - id: adam_kucharski 


tags: [control-measures]

---


**[Read the full preprint here](https://www.medrxiv.org/content/10.1101/2020.08.01.20166595v1.full.pdf).**

### Abstract
Unlike forward contact tracing, backward contact tracing identifies the source of newly detected cases. This approach is particularly valuable when there is high individual-level variation in the number of secondary transmissions. By using a simple branching process model, we explored the potential of combining backward contact tracing with more conventional forward contact tracing for control of COVID-19.

<img src="reports/backwardtracing1.png" width="70%" style="display: block; margin: auto;" />
*Figure 1. Schematic illustration of forward and backward contact tracing. Two cases (index cases #1 and #2) from a transmission tree originating from an (initially) undetected primary case are assumed to be detected by surveillance. Possible results of contact tracing are shown where (A) only forward tracing is performed; (B) both forward and backward tracing are performed. Some cases may remain undetected because contact tracing can miss cases.*

<img src="reports/backwardtracing2.png" width="70%" style="display: block; margin: auto;" />
*Figure 2. The estimated effectiveness of forward and backward contact tracing for different parameter values. R: the reproduction number; k: overdispersion parameter; b: probability of successful identification of the primary case; d: probability of detection of G2 cases independent of contact tracing. Left panels (A, D, G): the effectiveness (the proportion of G3 cases averted) of forward tracing alone; middle panels (B, E, H): the effectiveness of a combination of forward and backward tracing; right panels (C, F, I): incremental effectiveness by combining backward tracing with forward tracing. Colours represent the relative reduction in infectiousness of G2 cases if traced and put in quarantine.*
