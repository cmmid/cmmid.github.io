---

#add the title of your project
title: Estimating the overdispersion in COVID-19 transmission using outbreak sizes outside China

#add a description

description: We evaluated the overdispersion in the number of secondary transmissions of COVID-19

#add a status: in-progress, under-review, published
#defaults to in-progress if not set
status: in-progress

#add the date at which post is updated (if applicable), in YYYY-MM-DD
update: 2020-03-11

#add optional hash-array with authors
# see /_data/authors.yml for list of ids, or to add/edit an author
# can add ncov-group as one author, will link to list of members
# can set equal: X to show 'contributed equally'
# can set corresponding: true to indicate corresponding author 
authors:
  - id: akira_endo
    corresponding: true
  - id: ncov-group
  - id: adam_kucharski
  - id: seb_funk
#set this to true for MathJax to work
rmarkdown_html_fragment: true

---

## Aim
To estimate the level of overdispersion in COVID-19 transmission from the worldwide case count data.

## Methods summary
* We extracted the number of imported/local cases in the affected countries from the [WHO situation report 38](https://www.who.int/docs/default-source/coronaviruse/situation-reports/20200227-sitrep-38-covid-19.pdf) published on 27 February 2020.
* Assuming that the offspring distribution (distribution of the number of secondary transmissions) for COVID-19 cases is an identically- and independently-distributed negative-binomial distribution, we estimated the parameters of the negative-binomial distribution (reproduction number <span class="math display">\(R_0\)</span> and overdispersion <span class="math display">\(k\)</span>) using the likelihood of observing the reported number of imported/local cases (outbreak size) of COVID-19 for each country.
* The outbreak size may grow in countries with an ongoing outbreak; using the current outbreak size as the final size for such countries may introduce bias. We assumed that the growth of a cluster in a country had not been ceased if the latest reported cases were within 7 days before 27 February 2020, and adjusted the likelihood for these countries by using the condition that the final cluster size has to be at least as large as the currently observed number of cases.

## Key findings
* The offspring distribution of COVID-19 is highly overdispersed.
* For the likely range of <span class="math display">\(R_0\)</span> of 2-3, the overdispersion parameter <span class="math display">\(k\)</span> was estimated to be around 0.1, suggesting that the majority of secondary transmission is caused by a very small fraction of individuals (80% of transmissions caused by ~10% of the total cases).
* Joint estimation of <span class="math display">\(R_0\)</span> and <span class="math display">\(k\)</span> indicated it is likely that <span class="math display">\(R_0>1.4\)</span> and <span class="math display">\(k<0.2\)</span>. The current data and model did not provide evidence on the upper bound of <span class="math display">\(R_0\)</span>.

![Fig1A](figures/outbreaksize-fig1.png)
Figure 1. MCMC estimates given assumed R0 values.
(A) Estimated overestimation parameter for various basic reproduction number R0. (B) Proportion of infected individuals responsible for 80% of the total secondary transmissions (p80%).
The black lines show the median estimates given fixed R0 values and the grey shaded areas indicate 95% CrIs. The regions corresponding to the likely range of R0 (2-3) are indicated by colour.

<table>
<caption>Table 1. Credible intervals from a joint estimation</caption>
<thead>
	<tr><th></th><th scope=col>Prior distribution</th><th scope=col>95% lower bound</th><th scope=col>95% upper bound</th></tr>
</thead>
<tbody>
	<tr><th scope=row><span class="math display">\(R_0\)</span></th><td><span class="math display">\(\mathcal N(3,5)\)</span></td><td>1.4</td><td>11.6</td></tr>
	<tr><th scope=row><span class="math display">\(k\)</span></th><td><span class="math display"><span class="math display">\(\mathrm{HalfNormal}(10)\)</span> for the reciprocal <span class="math display">\(k^{-1}\)</span></td><td>0.04</td><td> 0.2</td></tr>
</tbody>
</table>

## Limitations
* We used the confirmed case counts reported to WHO and did not account for possible underreporting of cases.
* Reported cases whose site of infection classified as unknown, which should in principle be counted as either imported or local cases, were excluded from analysis.
* The distinction between countries with and without ongoing outbreak (7 days without any new confirmation of cases) was arbitrary and the results may be sensitive to this assumption.

## Detailed methods
Full details and the underlying scripts can be found on a [Github page](https://akira-endo.github.io/COVID19_clustersize/COVID19_clustersize.html).
### Data source
We extracted the number of imported/local cases in the affected countries from the [WHO situation report 39](https://www.who.int/docs/default-source/coronaviruse/situation-reports/20200227-sitrep-38-covid-19.pdf) published on 27 February 2020, which, at the time of writing, is the latest report of the number of imported/local cases in each country (from the situation report 40, WHO no longer reports the number of cases stratified by the site of infection). We defined imported cases as the cases whose likely site of infection is outside the reporting country, and the local cases as those whose likely site of infection is inside the reporting country. Those whose site of infection under investigation were excluded from the analysis. In Egypt and Iran, no imported cases have been confirmed which cause the likelihood value to be zero. Data in these two countries were excluded.

To distinguish between countries with and without an ongoing outbreak, we extracted daily case counts from an [online resource (COVID2019.app)](https://docs.google.com/spreadsheets/d/1Z7VQ5xlf3BaTx_LBBblsW4hLoGYWnZyog3jqsS9Dbgc) and determined the dates of the latest case confirmation for each country (as of 27 February).

### Final outbreak size
Assume that the offspring distribution for COVID-19 cases is an i.i.d. negative-binomial distribution. The probability mass function for the final cluster size resulting from <span class="math display">\(s\)</span> initial cases is, according to [Blumberg et al.](https://doi.org/10.1371/journal.ppat.1004452), given by
<p><span class="math display">\[
c(x;s)=P(X=x;s)=\frac{ks}{kx+x-s}\binom{kx+x-s}{x-s}\frac{\left(\frac{R_0} k\right)^{x-s}}{\left(1+\frac{R_0} k\right)^{kx+x-s}}.
\]</span></p>

If the observed case counts are part of an ongoing outbreak in a country, cluster sizes may grow in the future. To address this issue, we adjusted the likelihood corresponding those countries with ongoing outbreak by only using the condition that the final cluster size of such a country has to be larger than the currently observed number of cases. The corresponding likelihood function is
<p><span class="math display">\[
c_\mathrm{o}(x;s)=P(X\geq x;s)=1-\sum_{m=0}^{x}c(m;s)+c(x;s)
\]</span></p>

### Defining countries with ongoing outbreak and total likelihood
We assumed that the growth of a cluster in a country had ceased if 7 days have passed since the latest reported cases (denoted by <span class="math display">\(A\)</span>). We applied the final size likelihood <span class="math display">\(c(x;s)\)</span> to those countries and <span class="math display">\(c_\mathrm{o}(x;s)\)</span> to the rest of the countries (countries with an ongoing outbreak: <span class="math display">\(B\)</span>).

The total likelihood is
<p><span class="math display">\[
L(R_0,k)=\prod_{i\in A}P(X=x_i;s_i)\prod_{i\in B}P(X\geq x_i;s_i)
\]</span></p>

### Estimating overdispersion parameter
Holding <span class="math display">\(R_0\)</span> constant, we estimated the overdispersion parameter <span class="math display">\(k\)</span> using the likelihood given above. We used the Markov-chain Monte Carlo (MCMC) method to provide 95% credible intervals (CrIs). The reciprocal of <span class="math display">\(k\)</span> (concentration parameter) was sampled where the prior distribution for the reciprocal was weakly-informed half-normal (<span class="math display">\(\mathrm{HalfNormal}(\sigma=10)\)</span>). We employed the adaptive hit-and-run Metropolis algorithm and obtained 500 thinned samples from 10,000 MCMC steps (where the first half of the chain was discarded as burn-in).

### Proportion responsible for 80% of transmissions
Following [Grantz et al.](https://hopkinsidd.github.io/nCoV-Sandbox/DispersionExploration.html), we calculated the estimated proportion of infected individuals responsible for 80% of secondary transmissions caused. Such proportion <span class="math display">\(p_{80\%}\)</span> is given as
<p><span class="math display">\[
1-p_{80\%}=\int_0^{X}\mathrm{NB}\left(\lfloor x\rfloor;k,\frac{k}{R_0+k}\right)dx,
\]</span></p>
where <span class="math display">\(X\)</span> satisfies
<p><span class="math display">\[
1-0.8=\frac 1{R_0}\int_0^{X}\lfloor x\rfloor\mathrm{NB}\left(\lfloor x\rfloor;k,\frac{k}{R_0+k}\right)dx.
\]</span></p>

Note that
<p><span class="math display">\[
\frac 1{R_0}\int_0^{X}\lfloor x\rfloor\mathrm{NB}\left(\lfloor x\rfloor;k,\frac{k}{R_0+k}\right)dx=\int_0^{X-1}\mathrm{NB}\left(\lfloor x\rfloor;k+1,\frac{k}{R_0+k}\right)dx.
\]</span></p>

We computed <span class="math display">\(p_{80\%}\)</span> for each MCMC sample to yield median and 95% CrIs.

### Joint estimation of <span class="math display">$R_{0}$</span> and <span class="math display">\(k\)</span>
We performed a joint estimation of <span class="math display">\(R_0\)</span> and <span class="math display">\(k\)</span> by MCMC (with a weakly-informed normal prior <span class="math display">\(\mathcal N(\mu=3,\sigma=5)\)</span> for <span class="math display">\(R_0\)</span>; the prior for <span class="math display">\(k^{-1}\)</span> was the same as above). The posterior distribution indicated a lower bound of <span class="math display">\(R_0\)</span> of 1.4 and the upper bound of <span class="math display">\(k\)</span> of 0.2. The upper bound of <span class="math display">\(R_0\)</span> did not differ much from that of the prior, suggesting that our model and data did not provide useful evidence on the upper bound of <span class="math display">\(R_0\)</span>.