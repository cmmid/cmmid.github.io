---

# add the title of your project
title: "COVID-19 vaccination in Sindh Province, Pakistan: A modelling study of health impact and cost-effectiveness"

description: We evaluated the cost-effectiveness of vaccination against COVID-19 in Sindh, Pakistan

# delete any tags which aren't appropriate
# if you need more tags, they can be created! Please discuss.
tags: [transmission-dynamics, lmic-considerations, control-measures, forecasts-and-projections]

# these are the statuses you can choose from; delete/uncomment as necessary
# defaults to paper-under-peer-review if not set
status: paper-published-at-journal
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
# status: report
# status: comment-opinion-online
# status: comment-opinion-journal

# add the date at which post is updated (or the date of the initial post, if its the initial post) in YYYY-MM-DD
update: 2021-10-09

# add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: carl_ab_pearson
    corresponding: true
  - id: fiammetta_bozzani
    equal: 1
  - id: simon_procter
    equal: 1
  - id: nick_davies
    equal: 1
  - id: maryam_huda
  - id: henning_tarp_jensen
  - id: marcus_keogh_brown
  - id: muhammad_khalid
  - id: sedona_sweeney
  - id: sergio_torres_rueda
  - id: chil-group
  - id: ncov-group
  - id: roz_eggo
    equal: 2
  - id: anna_vassall
    equal: 2
  - id: mark_jit
    equal: 2

---

**[The published version is available here.](https://doi.org/10.1371/journal.pmed.1003815)**

# Background

Multiple Coronavirus Disease 2019 (COVID-19) vaccines appear to be safe and efficacious, but only high-income countries have the resources to procure sufficient vaccine doses for most of their eligible populations. The World Health Organization has published guidelines for vaccine prioritisation, but most vaccine impact projections have focused on high-income countries, and few incorporate economic considerations. To address this evidence gap, we projected the health and economic impact of different vaccination scenarios in Sindh Province, Pakistan (population: 48 million).

# Methods and findings

We fitted a compartmental transmission model to COVID-19 cases and deaths in Sindh from 30 April to 15 September 2020. We then projected cases, deaths, and hospitalisation outcomes over 10 years under different vaccine scenarios. Finally, we combined these projections with a detailed economic model to estimate incremental costs (from healthcare and partial societal perspectives), disability-adjusted life years (DALYs), and incremental cost-effectiveness ratio (ICER) for each scenario.

We project that 1 year of vaccine distribution, at delivery rates consistent with COVAX projections, using an infection-blocking vaccine at $3/dose with 70% efficacy and 2.5-year duration of protection is likely to avert around 0.9 (95% credible interval (CrI): 0.9, 1.0) million cases, 10.1 (95% CrI: 10.1, 10.3) thousand deaths, and 70.1 (95% CrI: 69.9, 70.6) thousand DALYs, with an ICER of $27.9 per DALY averted from the health system perspective. Under a broad range of alternative scenarios, we find that initially prioritising the older (65+) population generally prevents more deaths. However, unprioritised distribution has almost the same cost-effectiveness when considering all outcomes, and both prioritised and unprioritised programmes can be cost-effective for low per-dose costs. High vaccine prices ($10/dose), however, may not be cost-effective, depending on the specifics of vaccine performance, distribution programme, and future pandemic trends.

The principal drivers of the health outcomes are the fitted values for the overall transmission scaling parameter and disease natural history parameters from other studies, particularly age-specific probabilities of infection and symptomatic disease, as well as social contact rates. Other parameters are investigated in sensitivity analyses.

This study is limited by model approximations, available data, and future uncertainty. Because the model is a single-population compartmental model, detailed impacts of nonpharmaceutical interventions (NPIs) such as household isolation cannot be practically represented or evaluated in combination with vaccine programmes. Similarly, the model cannot consider prioritising groups like healthcare or other essential workers. The model is only fitted to the reported case and death data, which are incomplete and not disaggregated by, e.g., age. Finally, because the future impact and implementation cost of NPIs are uncertain, how these would interact with vaccination remains an open question.

# Conclusions

COVID-19 vaccination can have a considerable health impact and is likely to be cost-effective if more optimistic vaccine scenarios apply. Preventing severe disease is an important contributor to this impact. However, the advantage of prioritising older, high-risk populations is smaller in generally younger populations. This reduction is especially true in populations with more past transmission, and if the vaccine is likely to further impede transmission rather than just disease. Those conditions are typical of many low- and middle-income countries.

# Funding

Bill & Melinda Gates Foundation, World Health Organization, Medical Research Council, UK Research and Innovation, Health Data Research UK
