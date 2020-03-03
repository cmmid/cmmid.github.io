---

#add the title of your project
title: Inferring cases from recent deaths

description: We infer the number of COVID-19 cases based on recently reported deaths.

#add a status: in-progress, under-review, published
#defaults to in-progress if not set
status: in-progress

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-03-03

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author 
authors:
  - id: thibaut_jombart
    corresponding: true
  - id: sam_abbott
    equal: 1
  - id: amy_gimma
    equal: 1
  - id: chris_jarvis
    equal: 1
  - id: tim_russell
    equal: 1
  - id: kevin_vanzandvoort
    equal: 1
  - id: sam_clifford
  - id: seb_funk
  - id: hamish_gibbs
  - id: yang_liu
  - id: roz_eggo
  - id: adam_kucharski
  - id: ncov-group
  - id: john_edmunds
    corresponding: true

#make sure old urls still work by redirecting to this post
<!-- redirect_from: -->
<!--   - /ncov/isolation_contact_tracing/ -->

---



## Aim

To infer the number of cases of COVID-19 based on recent deaths.




## Key findings

By the time a COVID-19 death is reported in a newly affected country, it is
likely that there are already hundreds or thousands of cases in the population.
This means containment through contact tracing will be very challenging, and
alternative control/mitigation strategies should be considered.




## Summary of findings



## Summary of the methods

### Outline

For any new death, we infer the *date of onset* of the patient and the number of
*concurrent cases who survived*, and use a *branching process* to simulate
epidemic trajectories from these cases, until the present time. Large numbers of
simulations are used to account for the uncertainty in delay distributions, case
fatality ratio (CFR), and transmissibility.


### Algorithm

A single simulation involves the following steps:

1. for each death:

    1.1. draw a likely date of onset from the onset-to-death delay
   distribution; obtain one date of onset per death
   
    1.2. draw the total number of concurrent cases as the sample size of a Binomial
   distribution with probability = CFR and 1 success
   
    1.3. simulate several (50, by default) epidemic trajectories with a Poisson
   branching process using specified reproduction numbers (*R*) and serial
   interval distribution, until present time
   
2. add epidemic trajectories from every deaths

A typical run of our model involves several hundreds (by default, 200)
simulations, which are concatenated, and from which summaries are then derived.



### Model parameters

Inputs of the model are parametrised as follows:

* **serial interval**: discretised log-normal distribution with a mean of 4.7
  days and a standard deviation of 2.9 days; source:
  https://www.medrxiv.org/content/10.1101/2020.02.03.20019497v2.full.pdf

* **onset-to-death distribution**: discretised Gamma distribution with shape
  4.726 and rate 0.3151; source: https://www.mdpi.com/2077-0383/9/2/538

* **R$**: defaults to 2, in line with previous estimations, but different values
  are investigated in a sensitivity study; source:
  https://wellcomeopenresearch.org/articles/5-17

* **CFR**: defaults to 2%, in line with previous estimations, but different values
  are investigated in a sensitivity study; source:








## Key assumptions and limitations




## References
