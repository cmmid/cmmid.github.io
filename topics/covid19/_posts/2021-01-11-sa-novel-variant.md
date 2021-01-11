---

title: "Estimates of severity and transmissibility of novel South Africa SARS-CoV-2 variant 501Y.V2"

description: "Using globally available data sources with mathematical models, we analysed the transmissibility and severity of a novel SARS-CoV-2 variant, 501Y.V2, in South Africa."

status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal

tags: [transmission-dynamics, severity, lmic-considerations, control-measures, comments-opinions]

# add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-01-11

authors:
  - id: carl_ab_pearson
    corresponding: true
  - id: tim_russell
  - id: nick_davies
  - id: adam_kucharski
  - id: ncov-group
  - id: john_edmunds
  - id: roz_eggo

---

**[Read the full preprint here.](reports/sa-novel-variant/2021_01_11_Transmissibility_and_severity_of_501Y_V2_in_SA.pdf)**

**[Read the technical appendix here.](reports/sa-novel-variant/2021_01_11_501Y_V2_appendix.pdf)**

**[Github repository.](https://github.com/cmmid/SA2UK)**

On 18 December 2020, researchers reported emergence of a novel SARS-CoV-2 variant, 501Y.V2, in South Africa. This coincided with an accelerating incidence of COVID-19 cases, despite the pandemic turning over earlier in the year under relaxing public health controls, consistent with dynamics reflecting substantial accumulation of immunity (Figure 1A-B). 501Y.V2 was soon detected in other countries with probable connection to travellers from South Africa. Another fast-spreading variant appears to have emerged independently in the UK, estimated to be 1.56 (95% credible interval (CrI): 1.50-1.74) as transmissible as previously circulating lineages. As with the UK variant, there is an urgent need to characterise the transmissibility and severity of 501Y.V2.

Using globally available data, we calibrated an SARS-CoV-2 modelling framework the South African pandemic and evaluated the novel variant for potentially increased transmissibility or immune escape.  Assuming complete cross-protection, we estimate 501Y.V2 is 1.50 (95% CrI: 1.20-2.13) times as transmissible as previously circulating variants. Assuming instead that 501Y.V2 is identically transmissible, the new variant evades 21% (95% CrI: 11-36%) of previously acquired immunity. Reality may lie between these extremes, with an intermediate increase in transmissibility and mildly imperfect cross-protection from past exposure. Though our analysis does not identify where on this spectrum 501Y.V2 lies, the entire range has serious public health consequences.

We found some evidence of a change in severity (Figure 1C), estimated from the corrected ratio of delay-adjusted cases and deaths in the Western Cape province, though there is substantial uncertainty and local reporting delays may differ from global estimates. Continued monitoring of severity, including more detailed investigation of differences in reporting, incidence in new demographic groups, or health system crowding is essential.

The emergence of two novel variants in the UK and South Africa with similar estimated increased transmissibility suggests there will be substantial challenges with global control of SARS-CoV-2 in early 2021. This highlights the need for maintaining control measures and accelerating vaccination roll-out, as well as continued monitoring of vaccine effectiveness against novel variants to detect immune escape promptly.

<img src="figures/sa_novel_variant_Figure1.png" width="80%" style="display: block; margin: auto;" />

**Fig. 1.** In all panels, ribbons represent 95% (lighter) and 50% (darker) Credible Intervals. A: Reported and projected dynamics of cases over time in South Africa, with the estimated emergence of 501Y.V2 overlaid. Model cases are adjusted by an ascertainment rate computed to fit the stable incidence in September, and deaths by 50%. For cases, the model suggests ascertainment is 3% (95% CrI: 1-24%). B: Sample model projected cumulative attack fraction, by age groups; cross-hairs for sentinel population (people living with HIV and pregnant women) serosurvey. Serosurvey data were not used in calibration. C: Case Fatality Ratio calculated using daily time-series of reported new cases and new COVID-19 deaths in the Western Cape province of South Africa, with the deaths time-series corrected for the delay between confirmation-to-death. The Western Cape has the most consistent time series for deaths, based on comparison to excess deaths, and therefore is likely the most accurate indicator. The corrected CFR for each province and the whole of South Africa is shown in Appendix Figure 3.
