---

# add the title of your project
title: Estimating the effectiveness of syndromic screening at airports for Bundibugyo ebolavirus disease

#add a description
description: A stochastic simulation model finds that syndromic airport screening would fail to detect most Bundibugyo ebolavirus-infected travellers, because most depart while still pre-symptomatic.

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
update: 2026-07-23

authors:
  - id: billy_quilty
    corresponding: true
  - id: bvd-group

---

**Background** An outbreak of Bundibugyo ebolavirus disease (BVD) affecting Ituri Province,
Democratic Republic of the Congo (DRC), with confirmed spread to Uganda, was declared a Public
Health Emergency of International Concern by WHO in May 2026. Airport syndromic (fever)
screening is often considered as one of a suite of measures to limit international spread of viral
haemorrhagic fevers. We estimated how effective combined exit and entry syndromic screening
would be at detecting BVD-infected air travellers.

**Methods** We used a stochastic individual-based simulation model, adapted from a screening
model originally developed for 2019-nCoV, to estimate the proportion of infected travellers who
would be detected at exit screening, become severely ill during the flight, be detected at entry
screening, or remain undetected throughout. Natural-history parameters (incubation period and
onset-to-severe-disease interval) were derived from the 2007 Uganda outbreak and a Bayesian
re-analysis of the 2012 Isiro (DRC) outbreak line list, since patient-level data from the current
2026 outbreak are not yet available. We modelled a representative 12-hour DRC/Uganda-to-international
connecting itinerary with 86% screening sensitivity at both exit and entry, and conducted
sensitivity analyses varying flight duration, the asymptomatic/afebrile fraction, the epidemic's
doubling time, and screening sensitivity.

**Results** Under the baseline scenario, we estimate that 73% (95% CrI: 68–77%) of BVD-infected
travellers would evade combined exit and entry screening entirely, primarily because most board
their flight before symptom onset. Among those who successfully boarded, 92% (95% CrI: 90–94%)
would arrive undetected. Even under a theoretical best-case scenario of 100% screening
sensitivity at both stages, 72% of infected travellers would still go undetected on arrival. The
undetected fraction increased further during active epidemic growth, rising to as much as 85%
under the fastest estimated doubling time, and was most sensitive to the incubation period,
ranging from 36–82% undetected across incubation periods of 1–14 days.

**Conclusion** Syndromic airport screening alone is unlikely to meaningfully reduce the risk of
international BVD spread via air travel, because most infected travellers depart while still
pre-symptomatic. Resources are likely better directed towards outbreak control at source,
clinician preparedness and referral pathways in receiving countries, and structured
post-departure self-monitoring guidance for travellers from affected regions. Full methods,
results, sensitivity analyses and an interactive Shiny app for exploring screening parameters are
available in the [accompanying report](https://bquilty25.github.io/airport_screening_ebola_bvd/),
the [preprint on medRxiv](https://www.medrxiv.org/content/10.64898/2026.06.11.26355442v2), and the
[GitHub repository](https://github.com/bquilty25/airport_screening_ebola_bvd).
