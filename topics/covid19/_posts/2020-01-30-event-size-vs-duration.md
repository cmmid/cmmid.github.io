---
title: "Understanding the duration and size of the spillover event at the start of the 2019-nCoV outbreak"

description: "The transmissibility of novel Coronavirus in the early stages of the 2019-20 outbreak in Wuhan: Exploring initial point-source exposure sizes and durations using scenario analysis"

status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal

update: 2020-01-30

authors:
  - id: sam_abbott
    corresponding: true
  - id: joel_hellewell
  - id: james_munday
  - id: ncov-group
  - id: seb_funk

#make sure old urls still work
redirect_from:
  - /ncov/event-size-vs-duration
  - /ncov/event-size-vs-duration/
  - /topics/covid19/early-outbreak-dynamics/event-size-vs-duration.html

tags: [transmission-dynamics]
---

*S. Abbott, J. Hellewell, J. Munday, CMMID nCoV working group, S. Funk*

*Last updated: 30 January 2020*

**Background:** The current novel coronavirus outbreak appears to have originated from a point-source exposure event at Huanan seafood wholesale market in Wuhan, China. There is still uncertainty around the scale and duration of this exposure event. This has implications for the estimated transmissibility of the coronavirus and as such, these potential scenarios should be explored.

**Methods:** We used a stochastic branching process model, parameterised with available data where possible and otherwise informed by the 2002-2003 SARS outbreak, to simulate the Wuhan outbreak. We evaluated scenarios for the following parameters: the size, and duration of the initial transmission event, the serial interval, and the reproduction number (R0). We restricted model simulations based on the number of observed cases on the 25th of January, accepting samples that were within a 5% interval on either side of this estimate.

**Results:** Using a pre-intervention SARS-like serial interval suggested a larger initial transmission event and a higher R0 estimate. Using a SARs-like serial interval we found that the most likely scenario produced an R0 estimate between 2-2.7 (90% credible interval (CrI)). A pre-intervention SARS-like serial interval resulted in an R0 estimate between 2-3 (90% CrI). There were other plausible scenarios with smaller events sizes and longer duration that had comparable R0 estimates. There were very few simulations that were able to reproduce the observed data when R0 was less than 1.

**Conclusions:** Our results indicate that an R0 of less than 1 was highly unlikely unless the size of the initial exposure event was much greater than currently reported. We found that R0 estimates were comparable across scenarios with decreasing event size and increasing duration. Scenarios with a pre-intervention SARS-like serial interval resulted in a higher R0 and were equally plausible to scenarios with SARs-like serial intervals.


The study can be read [here](https://wellcomeopenresearch.org/articles/5-17) and the package code can be found [here](https://github.com/epiforecasts/WuhanSeedingVsTransmission).
