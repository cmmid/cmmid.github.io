---
title: "The effectiveness of social bubbles as part of a Covid-19 lockdown exit strategy, a modelling study" 

description: "We consider expanding the social bubble of either all households or only single occupance households or households with young children. We assess how the implementation of these strategies during lockdown impacts on the risk for Covid-19 resugence."

# this is a legacy status and should be changed to one of the newer ones
# status: in-progress
status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
# status: report
# status: comment-opinion-online
# status: comment-opinion-journal

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-06-05

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: Trystan Leng
    corresponding: true
  - id: Connor White
  - id: Joe Hilton
  - id: adam_kucharski
  - id: Lorenzo Pellis
  - id: Helena Stage
  - id: nick_davies
  - id: ncov-group
  - id: Matt Keeling
  - id: stefan_flasche

tags: [transmission-dynamics, control-measures]
---

**Background:** During the Covid-19 lockdown, contact clustering in social bubbles may allow extending contacts beyond the household at minimal additional risk and hence has been considered as part of modified lockdown policy or a gradual lockdown exit strategy. We estimated the impact of such strategies on epidemic and mortality risk using the UK as a case study.
 
**Methods:** We used an individual based model for a synthetic population similar to the UK, that is stratified into transmission risks from the community, within the household and from other households in the same social bubble. The base case considers a situation where non-essential shops and schools are closed, the secondary household attack rate is 20% and the initial reproduction number is 0.8. We simulate a number of strategies including variations of social bubbles, i.e. the forming of exclusive pairs of households, for particular subsets of households (households including children and single occupancy households), as well as for all households. We test the sensitivity of the results to a range of alternative model assumptions and parameters.

**Results:** Clustering contacts outside the household into exclusive social bubbles is an effective strategy of increasing contacts while limiting some of the associated increase in epidemic risk. In the base case scenario social bubbles reduced cases and fatalities by 17% compared to an unclustered increase of contacts. We find that if all households were to form social bubbles the reproduction number would likely increase to 1.1 and therefore beyond the epidemic threshold of one. However, strategies that allow households with young children or single occupancy households to form social bubbles only increased the reproduction number by less than 10%. The corresponding increase in morbidity and mortality is proportional to the increase in the epidemic risk but is largely focussed in older adults independently of whether these are included in the social bubbles.

**Conclusions:** Social bubbles can be an effective way of extending contacts beyond the household limiting the increase in epidemic risk, if managed appropriately.

**[Read the full preprint here](reports/SocialBubbles.pdf).**

<img src="figures/SocialBubbles.png" width="70%" style="display: block; margin: auto;" />
***Figure 1. top panel: schematic of model structure and its stratification into different household sizes with three components of transmission dynamics, community transmission, bubble transmission and household transmission; left panel: household size distribution for all households in England and Wales, for those households with at least one child younger than 20 years old and for those with at least one child younger than 10 years old (about primary school age and younger). Right panel: illustrative transmission probability matrix A, composed of household and bubble contacts and including community transmission.*
