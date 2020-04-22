---

#add the title of your project
title: Impact of physical distance measures on transmission in the UK

description: We present the first results of an ongoing survey (CoMix) to track social contact behaviour during the Covid-19 pandemic, and compare social mixing to patterns found in a previous survey.

status: paper-accepted-at-journal
# status: paper-published-at-journal

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-04-20

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author
authors:
  - id: chris_jarvis
    corresponding: true
    equal: 1
  - id: kevin_vanzandvoort
    corresponding: true
    equal: 1
  - id: amy_gimma
  - id: kiesha_prem
  - id: ncov-group
  - id: petra_klepac
  - id: james_rubin
  - id: john_edmunds

redirect_from:
- /topics/covid19/current-patterns-transmission/comix-impact-of-physical-distance-measures-on-transmission-in-the-UK.html

tags: [transmission-dynamics, mixing-patterns, control-measures]
---

<a target = "_blank" href="reports/LSHTM-CMMID-20200401-CoMix-social-contacts.pdf" title="CoMix full report">Click here to read our full report.</a>

Many countries have adopted unprecedented physical distancing policies in response to the Covid-19 pandemic. In an attempt to mitigate the impact, the UK implemented strict physical distancing measures instructing individuals to stay at home and avoid leaving their house except for essential work, to take one form of exercise a day, and to buy essential items such as food and medicines. In addition, sporting events, schools, restaurants, bars, gyms and other leisure or hospitality-related businesses have all been closed.

We evaluate whether these measures might be sufficient to control the epidemic by estimating their impact on the reproduction number (R<sub>0</sub>, the average number of secondary cases generated per case in a completely susceptible population). We conducted a survey among 1,356 UK adults (referred to here as the CoMix survey), for which the first surveys were completed on Tuesday 24th March, one day after the UK lockdown was announced.

Participants reported the total number of direct contacts that they had on the day before the survey, which are people with whom they had at least a brief face-to-face conversation, or with whom they had any sort of skin-to-skin contact. We compared these contacts to UK data from the <a href="https://journals.plos.org/plosmedicine/article?id=10.1371/journal.pmed.0050074" target="_blank" title="POLYMOD paper">POLYMOD study</a>, conducted in 2006.

<img src="figures/comix_social_contacts_r0.png" alt="Social contact matrices under physical distancing measures" style="max-width:600px; margin: auto; width:100%;" />

**<span style="font-size: 0.8em; line-height: 1.3em;">Figure 1. (A) Social contact matrices showing the average total number of daily reported contacts made by participants in different age groups with individuals in other age groups, with results shown for all contacts reported in the CoMix and POLYMOD data. Participants' contacts in CoMix for age groups 0-4 and 5-17 are imputed using the POLYMOD data. (B) The estimated value of R<sub>0</sub> at the time of the survey, assuming values of R<sub>0</sub> ~ Norm(2.6, sd = 0.54) prior to physical distancing reducing all contacts.</span>**

<br />

We found a 73% reduction in the average daily number of contacts observed per participant. This would be sufficient to reduce R<sub>0</sub> from a value from 2.6 before the lockdown to 0.62 (0.37 - 0.89) during the lockdown, indicating that physical distancing interventions are effective in reducing the spread of the SARS-CoV-2 virus, and should lead to a substantial impact and decline in cases in the coming weeks. However, this projected decline in incidence will not occur immediately due to significant delays between infection, onset of symptomatic disease and hospitalisation, and reporting of these events. Panel A in Figure 1 compares the social contact matrix found in our current study to that in the POLYMOD study, and panel B shows our estimate of the current R<sub>0</sub> value.

Tracking behavioural change can give a more rapid assessment of the impact of physical distancing measures than routine epidemiological surveillance. We will continue to track behaviour during the Covid-19 pandemic, and regularly update with new results.

We have made our CoMix contact matrices available as a <a href="reports/20200327_comix_social_contacts.xlsx" title="Download the social contact matrices here" target="_blank" download="20200327_comix_social_contacts">spreadsheet</a>.
