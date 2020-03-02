---

#add the title of your project
title: The Contribution of Pre-symptomatic Transmission to the COVID-19 Outbreak

description: We estimate the proportion of observed cases that may have been caused by during the pre-symptomatic 
 period of the corresponding primary cases.

#add a status: in-progress, under-review, published
#defaults to in-progress if not set
status: in-progress

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-03-02

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author 
authors:
  - id: yang_liu
  - id: seb_funk
  - id: stefan_flasche

#make sure old urls still work by redirecting to this post
# redirect_from:
#   - /ncov/isolation_contact_tracing/

---


SARS-CoV-2 has been spreading rapidly, progressing from less than 300 cases in 4 countries to over 80,000 cases across 59 countries within the past month or so \[1\]. A major obstacle for outbreak control, which typically focuses on rapid syndromic identification and isolation of cases and their contacts, is pre-symptomatic transmission or transmission during an initial period of mild symptoms that could be suppressed by over-the-counter medicine \[2,3,4\]. 


In their analysis of the epidemiological dynamics of the first 425 cases, Li Qun et al.\[5\] report early estimates for both the serial interval and the incubation period for Covid-19, the disease caused by SARS-CoV-2. This allows rough estimation of the probability for onward transmission of SARS-Cov-2 while being pre-symptomatic. The overlap between the incubation period and serial interval distributions suggest that up to about one quarter of SARS-CoV-2 secondary infections may be caused during the pre-symptomatic period of the primary case (Figure 1). Data from a cluster of cases in Germany \[2\] suggest the serial interval might be even shorter than the one reported by Li Qun et al. \[5\], in which case the proportion of secondary cases would be even greater than our estimates.


Such potentially high contribution of pre-symptomatic transmission would be a large dent in the hope for controlling the outbreak. It implies that limiting pre-symptomatic transmission, for example, via public health messages that encourage self-isolation even with mild symptoms and (self-)quarantine of asymptomatic contacts of a confirmed case, will need to be an integral part of control efforts.

<img src="figures/time_r-1.png" width="65%"/> 
*Figure 1: The serial distribution stratified according to the probability of having completed the incubation period on that day. Assuming that serial interval and incubation period are independent (i.e., the length of the serial interval in an individual is independent of their incubation period), the overall probability of a transmission event to happen before the infector becomes symptomatic is 26%. If the periods are correlated, however, these probabilities change. The probability of a transmission event to happen before the infector becomes symptomatic is also compatible in principle with a range from  0% (perfect correlation) to 32% (perfect anti-correlation). The code to perform these calculations can be found at <https://github.com/yangclaraliu/2019nCoV_proportion_asym>.*

References
----------

1 World Health Organisation. Novel Coronavirus(2019-nCoV) Situation Report - 41 [Internet]. Available from: <https://www.who.int/docs/default-source/coronaviruse/situation-reports/20200301-sitrep-41-covid-19.pdf?sfvrsn=6768306d_2>

2 Rothe C, Schunk M, Sothmann P, et al. Transmission of 2019-nCoV Infection from an Asymptomatic Contact in Germany. N Engl J Med 2020;0(0).

3 Fraser C, Riley S, Anderson RM, Ferguson NM. Factors that make an infectious disease outbreak controllable. Proc Natl Acad Sci 2004;101(16):6146–51.

4 Kupferschmidt, K. (2020). Study claiming new coronavirus can be transmitted by people without symptoms was flawed. [online] Available at: <https://www.sciencemag.org/news/2020/02/paper-non-symptomatic-patient-transmitting-coronavirus-wrong>

5 Li Q, Guan X, Wu P, et al. Early Transmission Dynamics in Wuhan, China, of Novel Coronavirus–Infected Pneumonia. N Engl J Med 2020;0(0).


