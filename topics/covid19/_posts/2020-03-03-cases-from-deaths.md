---

#add the title of your project
title: "Inferring cases from recent deaths"

description: We infer the number of COVID-19 cases based on recently reported deaths. Results suggest that by the time a single COVID-19 death is reported, hundreds to thousands of cases may already be present in the population.

# this is a legacy status and should be changed to one of the newer ones
status: paper-under-peer-review
# status: paper-under-peer-review
# status: paper-accepted-at-journal
# status: paper-published-at-journal
# status: real-time-report
# status: report
# status: comment-opinion-online
# status: comment-opinion-journal

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-03-04

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

redirect_from:
- /topics/covid19/current-patterns-transmission/cases-from-deaths.html

tags: [transmission-dynamics, forecasts-and-projections]
---

<style>

table.blueTable {
  font-family: Arial, Helvetica, sans-serif;
  border: 1px solid #93A2BC;
  background-color: #FFFFFF;
  width: 100%;
  text-align: left;
  border-collapse: collapse;
}
table.blueTable td, table.blueTable th {
  border: 1px solid #FFFFFF;
  padding: 3px 2px;
}
table.blueTable tbody td {
  font-size: 13px;
}
table.blueTable tr:nth-child(even) {
  background: #CACBDD;
}
table.blueTable thead {
  background: #66676F;
}
table.blueTable thead th {
  font-size: 15px;
  font-weight: bold;
  color: #FFFFFF;
  border-left: 2px solid #FFFFFF;
}
table.blueTable thead th:first-child {
  border-left: none;
}

table.blueTable tfoot td {
  font-size: 10px;
}

</style>


## Aim

To infer the number of cases of COVID-19 based on recent deaths.




## Key findings

By the time a COVID-19 death is reported in a newly affected country, it is
likely that there are already hundreds or thousands of cases in the population.
This means containment through contact tracing will likely be very challenging,
and alternative control/mitigation strategies should probably be considered.

## App

We also created an [interactive tool](/visualisations/inferring-covid19-cases-from-deaths) where users can run the model themselves under different assumptions.



## Summary of findings

Simulations results ran for a range of parameter combinations and for a single
death are summarised in Table 1. Whilst there is substantial uncertainty in the
total numbers of cases, results under most settings suggest that hundreds to
thousands of cases are likely. Higher reproduction numbers (*R*) and lower CFR
give the largest estimates. The scenario leading to fewest cases (*R* = 1.5, CFR =
10%), which may be pausible for deaths in elderly patients, still suggest that a
few thousands of contacts (assuming a few 10s of contacts per case) would likely
have to be followed in order to contain the outbreak.

<table class="blueTable">
<thead>
<tr class="header">
<th align="right">R</th>
<th align="right">CFR</th>
<th align="right">Average</th>
<th align="right">Median</th>
<th align="right">Lower 95%</th>
<th align="right">Lower 50%</th>
<th align="right">Upper 50%</th>
<th align="right">Upper 95%</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">1.5</td>
<td align="right">1 %</td>
<td align="right">1018</td>
<td align="right">626</td>
<td align="right">59</td>
<td align="right">322</td>
<td align="right">1319</td>
<td align="right">3631</td>
</tr>
<tr class="even">
<td align="right">2.0</td>
<td align="right">1 %</td>
<td align="right">5141</td>
<td align="right">1476</td>
<td align="right">62</td>
<td align="right">670</td>
<td align="right">3619</td>
<td align="right">30799</td>
</tr>
<tr class="odd">
<td align="right">3.0</td>
<td align="right">1 %</td>
<td align="right">26093</td>
<td align="right">5238</td>
<td align="right">201</td>
<td align="right">1748</td>
<td align="right">16561</td>
<td align="right">240199</td>
</tr>
<tr class="even">
<td align="right">1.5</td>
<td align="right">2 %</td>
<td align="right">472</td>
<td align="right">298</td>
<td align="right">32</td>
<td align="right">151</td>
<td align="right">584</td>
<td align="right">2254</td>
</tr>
<tr class="odd">
<td align="right">2.0</td>
<td align="right">2 %</td>
<td align="right">1951</td>
<td align="right">763</td>
<td align="right">60</td>
<td align="right">266</td>
<td align="right">2023</td>
<td align="right">12278</td>
</tr>
<tr class="even">
<td align="right">3.0</td>
<td align="right">2 %</td>
<td align="right">20387</td>
<td align="right">3662</td>
<td align="right">287</td>
<td align="right">1279</td>
<td align="right">13050</td>
<td align="right">166783</td>
</tr>
<tr class="odd">
<td align="right">1.5</td>
<td align="right">3 %</td>
<td align="right">300</td>
<td align="right">192</td>
<td align="right">25</td>
<td align="right">100</td>
<td align="right">382</td>
<td align="right">1158</td>
</tr>
<tr class="even">
<td align="right">2.0</td>
<td align="right">3 %</td>
<td align="right">923</td>
<td align="right">430</td>
<td align="right">35</td>
<td align="right">172</td>
<td align="right">926</td>
<td align="right">5177</td>
</tr>
<tr class="odd">
<td align="right">3.0</td>
<td align="right">3 %</td>
<td align="right">47899</td>
<td align="right">2142</td>
<td align="right">79</td>
<td align="right">549</td>
<td align="right">7140</td>
<td align="right">189223</td>
</tr>
<tr class="even">
<td align="right">1.5</td>
<td align="right">10 %</td>
<td align="right">104</td>
<td align="right">65</td>
<td align="right">3</td>
<td align="right">30</td>
<td align="right">130</td>
<td align="right">415</td>
</tr>
<tr class="odd">
<td align="right">2.0</td>
<td align="right">10 %</td>
<td align="right">248</td>
<td align="right">120</td>
<td align="right">9</td>
<td align="right">49</td>
<td align="right">268</td>
<td align="right">1348</td>
</tr>
<tr class="even">
<td align="right">3.0</td>
<td align="right">10 %</td>
<td align="right">4945</td>
<td align="right">488</td>
<td align="right">13</td>
<td align="right">121</td>
<td align="right">1764</td>
<td align="right">49745</td>
</tr>
</tbody>
</table>
<br>
*Table 1: summaries of the total number of cases inferred for a single death,
based on 200 simulations for each parameter combination.*




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
simulations, which are concatenated, and from which summaries are then
derived. Results from a single simulation are illustratred on the figure below.

<br>

<img src="figures/deaths2cases_example.png" width="65%"> <br>
*Figure 1: Example of a single simulation for 3 deaths, showing 100 epidemic
trajectories. Red lines indicate dates of deaths. Dark bars indicate the
inferred concurrent cases, placed at the inferred date of onset. The blue ribbon
and colored lines provide a visual summary of the resulting epidemic curves, in
number of new cases daily.*

<br>

<img src="figures/deaths2cases_example_cumul.png" width="65%"> <br>
*Figure 2: Example of a single simulation for 3 deaths, showing 100 epidemic
trajectories. Red lines indicate dates of deaths. Dark bars indicate the
inferred concurrent cases, placed at the inferred date of onset. The blue ribbon
and colored lines provide a visual summary of the resulting epidemic curves, in
total (cumulated) numbers cases.*

<br>



### Model parameters

Inputs of the model are parametrised as follows:

* **serial interval**: discretised log-normal distribution with a mean of 4.7
  days and a standard deviation of 2.9 days;
  [source](https://www.medrxiv.org/content/10.1101/2020.02.03.20019497v2.full.pdf)

* **onset-to-death distribution**: discretised Gamma distribution with shape
  4.726 and rate 0.3151;
  [source](https://www.mdpi.com/2077-0383/9/2/538)

* **R**: defaults to 2, in line with previous estimations, but different values
  are investigated in a sensitivity study (R = 1.5, 2, 3);
  [source](https://wellcomeopenresearch.org/articles/5-17)

* **CFR**: defaults to 2%, in line with previous estimations, but different values
  are investigated in a sensitivity study (CFR = 1%, 2%, 3%, 10%);
  [source](https://www.who.int/docs/default-source/coronaviruse/situation-reports/20200219-sitrep-30-covid-19.pdf?sfvrsn=3346b04f_2)



### Code availability

The code implementing the model and the app is distributed under MIT license,
and available from [github](https://github.com/thibautjombart/covid19_cases_from_deaths).



## Key assumptions and limitations

* this model assumes that the death reported relates to a case infected
  in-country

* this model assumes no change in transmissibility (*R*) over time; it is only
  suitable in the early stages of epidemic growth, before intervention, changes
  in behaviour, or the depletion of susceptibles start having a significant
  effect on transmission

* the model does not account for over-dispersion in the offspring distribution
  which could result from super-spreading events (e.g. negative binomial
  distribution); this assumption can be relaxed if over-dispersion is
  well-characterised at some point in the future

* in the case of multiple deaths, it is assumed that each death has been
  generated by a separate branching process, so that resulting cases can be
  added; this is unlikely to be true if death dates are far apart, in which case
  they could actually belong to the same branch of the transmission tree; in
  such situation, our model will tend to over-estimate the number of cases
