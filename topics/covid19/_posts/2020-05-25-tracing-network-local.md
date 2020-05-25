---

#add the title of your project
title: "Combining fine-scale social contact data with epidemic modelling reveals interactions between contact tracing, quarantine, testing and physical distancing for controlling COVID-19"

description: "Simulated isolation, tracing and quarantine control strategies for SARS-CoV-2 in a real-world social network generated from high resolution GPS data."

status: report
# status: paper-accepted-at-journal
# status: paper-published-at-journal

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-05-25

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author 
authors:
  - id: Josh A Firth
  - id: joel_hellewell
  - id: petra_klepac
  - id: Stephen M Kissler
  - id: ncov-group
  - id: adam_kucharski
  - id: Lewis G Spurgin


tags: [mixing-patterns, control-measures]

---

Case isolation and contact tracing can contribute to the control of COVID-19 outbreaks. However, it remains unclear how real-world networks could influence the effectiveness and efficiency of such approaches. To address this issue, we simulated control strategies for SARS-CoV-2 in a real-world social network generated from high resolution GPS data. We found that tracing contacts-of-contacts reduced the size of simulated outbreaks more than tracing of only contacts, but resulted in almost one third of the local population being quarantined at a single point in time. Testing and releasing non-infectious individuals reduced the numbers of quarantined individuals without large increases in outbreak size, but high testing rates were required for this to be effective. Finally, if testing availability is constrained, we estimated that combining physical distancing with contact tracing could enable epidemic control while reducing the number of quarantined individuals. Our approach highlights the importance of network structure and social dynamics in evaluating the potential impact of SARS-CoV-2 control.

<img src="figures/tracing_network_local.png" alt="Network epidemics" style="max-width:600px; margin: auto; width:100%;" />

_Epidemic model predictions of outbreak size and number of people isolated/quarantined under different non-pharmaceutical intervention scenarios in the Haslemere network. A) Cumulative number of cases, number of people isolated per day, and number of people quarantined per day under each scenario. Lines and shaded areas represent median and interquartile range from 1000 simulations. B) Example networks from a single simulation of each scenario at day 20 of the outbreak._

**[Read the full preprint here](reports/2020_05_25_firth_et_al_manuscript.pdf) and the accompanying [supporting information here](reports/2020_05_25_firth_et_al_SI.pdf).**

