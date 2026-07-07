################################################################################
#' 
#' Confirmatory testing with a second lateral flow test may mitigate false
#' positives at low levels of SARS-CoV-2 prevalence in English schools 
#' 
#' https://cmmid.github.io/topics/covid19/lft_confirm_testing_schools.html
#' 
################################################################################
#'
#' Authors: Billy Quilty, Joel Hellewell, Sam Clifford
#' London School of Hygiene & Tropical Medicine CMMID COVID-19 Working Group
#' 
################################################################################
#' 
#' https://opensource.org/licenses/MIT
#' 
#' Copyright 2021, The authors
#' 
#' Permission is hereby granted, free of charge, to any person obtaining a copy
#' of this software and associated documentation files (the "Software"), to 
#' deal in the Software without restriction, including without limitation the 
#' rights to use, copy, modify, merge, publish, distribute, sublicense, and/or 
#' sell copies of the Software, and to permit persons to whom the Software is 
#' furnished to do so, subject to the following conditions:
#'
#' The above copyright notice and this permission notice shall be included in
#' all copies or substantial portions of the Software.
#'  
#' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
#' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
#' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
#' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
#' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#' FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS 
#' IN THE SOFTWARE.
#' 
################################################################################

if (!require(pacman)){
  install.packages("pacman")
}

pacman::p_load(char = c("tidyverse",
                        "extrafont",
                        "scales",
                        "conflicted",
                        "rriskDistributions"))

conflicted::conflict_prefer("set_names", "purrr")
conflicted::conflict_prefer("map", "purrr")
map(.x = c("mutate", "select", "filter"), 
    .f = function(x){conflicted::conflict_prefer(name = x, "dplyr")})

# number of samples to draw for prevalence
n_sims <- 1000

lseq <- function(from=1, to=100000, length.out=6) {
  # logarithmic spaced sequence
  exp(seq(log(from), log(to), length.out = length.out))
}

# what's the prevalence of COVID in the population?

# https://www.ons.gov.uk/peoplepopulationandcommunity/healthandsocialcare/conditionsanddiseases/bulletins/coronaviruscovid19infectionsurveypilot/previousReleases
prevalence_parms_current <- get.norm.par(
  p           = c(0.025, 0.975),
  show.output = FALSE, 
  plot        = FALSE,
  q           = c(1/500, 1/150)) %>% # as of 2020-10-30
  lapply(X = ., function(x) as.numeric(x))

# check that quantiles in match quantiles out
qnorm(p = c(0.025, 0.5, 0.975),
      mean = prevalence_parms_current[[1]], 
      sd   = prevalence_parms_current[[2]]) %>% round(4) -> prevalence_q_current

cv <- prevalence_parms_current$mean/prevalence_parms_current$sd

prevalence_parms <- lseq(from=0.00001,to=0.1,length.out = 100) %>%
  set_names(.) %>% 
  map(~list(mean = .x, sd = .x/cv))

# sample the prevalence from current ONS estimates
prevalence_sampled <- 
  map_dfr(prevalence_parms,
          ~data.frame(prevalence = 
                        rnorm(n = n_sims,
                              mean = .x[[1]], 
                              sd   = .x[[2]])) %>%
            mutate(sim = 1:n()),
          .id = "Prevalence")

# set up some specifities to test with
pcr_specificity   <- c("Low (99.90%)"        = 0.9990, 
                       "High (PCR) (99.90%)" = 0.9999)
LFT_specificity   <- c("Low (99.90%)"        = 0.9990, 
                       "High (LFT) (99.97%)" = 0.9997)

# sensitivities (against infection)
pcr_sensitivity <- 0.944
lft_sensitivity <- 0.534*pcr_sensitivity

# create data frame of relevant specificities
specificity <- crossing(`LFT only`     = LFT_specificity,
                        `PCR only`     = pcr_specificity) %>%
  mutate(`LFT + confirmatory LFT`      = `LFT only` + (1 - `LFT only`) * `LFT only`,
         `LFT + confirmatory PCR test` = `LFT only` + (1 - `LFT only`) * `PCR only`,
         name                          = c(names(LFT_specificity), 
                                           names(pcr_specificity))) %>%
  gather(assay, specificity, -name) %>%
  mutate(assay = fct_relevel(assay, "LFT only", "LFT + confirmatory PCR test", after = 0L),
         name  = factor(name, ordered = T)) %>% 
  mutate(sens  = case_when(assay == "LFT only"                    ~ lft_sensitivity,
                           assay == "PCR only"                    ~ pcr_sensitivity,
                           assay == "LFT + confirmatory PCR test" ~ lft_sensitivity*pcr_sensitivity,
                           assay == "LFT + confirmatory LFT"      ~ lft_sensitivity^2)) %>%
  mutate(fp_spec = ifelse(test = grepl(pattern = "only", x = as.character(assay)),
                          yes  = specificity,
                          no   = 1 - (1 - LFT_specificity)*
                            (1 - parse_number(as.character(name))/100))) %>%
  mutate(spec1   = ifelse(test = grepl("^LFT", assay),
                          yes  = LFT_specificity,
                          no   = parse_number(as.character(name))/100),
         spec2   = ifelse(test = grepl("confirmatory", assay),
                          yes  = parse_number(as.character(name))/100,
                          no   = 0))

# calculate PPV and NPV from specificities and sampled prevalences
predictive_value_ <- 
  specificity %>%
  crossing(prevalence_sampled) %>%
  mutate(follow_up = grepl(pattern = "confirm", x = assay)) %>%
  mutate(TP1 = sens,
         TP2 = sens^2,
         FN1 = (1 - sens),
         FN2 = sens*(1 - sens)) %>%
  mutate(TP  = prevalence*ifelse(follow_up, TP2, TP1),
         FN  = prevalence*ifelse(follow_up, FN1 + FN2, FN1),
         FP  = (1 - prevalence)*ifelse(follow_up, (1-spec1)*(1-spec2), (1-spec1)),
         TN  = (1 - prevalence)*ifelse(follow_up, (1-spec1)*spec2 + spec1, spec1)) %>%
  mutate(PPV = TP/(TP + FP),
         NPV = TN/(TN + FN)) %>%
  select(assay, sim, PPV, NPV, name,Prevalence, sens) %>%
  gather(key, value, PPV, NPV) 

predictive_value_q_ <- predictive_value_ %>%
  mutate(assay = factor(assay)) %>% 
  mutate(assay = fct_relevel(assay, "LFT only", "PCR only", after = 0L)) %>% 
  nest(data = -c(assay, key, name, sens, Prevalence)) %>%
  mutate(Q = map(data, ~quantile(.x$value, c(0.025, 0.25, 0.5, 0.75, 0.975)))) %>%
  unnest_wider(Q) %>% 
  mutate(Prevalence = as.numeric(Prevalence))

# use Open Sans if available, or fall back on Arial

extrafont::loadfonts()
family_font <- ifelse(any(grepl(pattern = "Open Sans",
                                x = extrafont::fonts())),
                      "Open Sans",
                      "Arial")

# for the x axis percentages
trim_percent <- function(x, ...){
  percent(x, ...) %>%
    str_replace(string = ., pattern =  "0+\\%", replacement = "\\%") %>%
    str_replace(string = ., pattern = "\\.\\%", replacement = "\\%")
}

# for a more aesthetically pleasing plot
plotting_theme <- 
  theme_minimal() +
  theme(panel.border    = element_rect(fill=NA),
        legend.position = "bottom",
        legend.box      = "vertical",
        text             = element_text(family = family_font),
        panel.grid.minor = element_blank(),
        axis.ticks = element_line())

predictive_plot <- filter(predictive_value_q_, 
                          str_detect(name,"LFT"), assay!="PCR only") %>%
  mutate(key = factor(key, levels = c("PPV", "NPV"),
                      labels = c("Positive Predictive Value",
                                 "Negative Predictive Value"))) %>%
  mutate(assay = factor(assay, levels = c("LFT only",
                                          "LFT + confirmatory LFT",
                                          "LFT + confirmatory PCR test"),
                        labels = c("LFT only",
                                   "LFT + conf. LFT",
                                   "LFT + conf. PCR"))) %>%
  ggplot(data = .) +
  geom_ribbon(aes(x    = Prevalence,
                  ymin = `2.5%`,
                  ymax = `97.5%`,
                  fill = assay),
              alpha    = 0.6) +
  geom_line(aes(x      = Prevalence,
                y      = `50%`,
                colour = assay)) + 
  labs(x = "Prevalence",
       y = "Probability")+
  geom_vline(xintercept  = range(prevalence_q_current),
             linetype    = "dashed",
             show.legend = T) +
  geom_vline(xintercept  = median(prevalence_q_current),
             linetype    = "solid",
             show.legend = T) +
  scale_linetype_manual(labels = c("Prevalence (range)", "Prevalence (median)"))+
  scale_x_continuous(labels = trim_percent,
                     trans  = "log10") +
  scale_y_continuous(breaks = pretty_breaks(n = 4),
                     labels = function(x){sprintf("%g",x)}) +
  scale_color_viridis_d(name   = "",
                        option = "inferno",
                        begin  = 0.2,
                        end    = 0.8)+
  scale_fill_viridis_d(name    = "",
                       option  = "inferno",
                       begin   = 0.2,
                       end     = 0.8)+
  facet_grid(cols = vars(key))  +
  plotting_theme +
  theme(panel.spacing    = unit(5,"mm"),
        axis.text.x      = element_text(angle=45,hjust=1),
        axis.title.y     = element_blank())+
  annotation_logticks(sides = "b") 

predictive_plot_logit <- predictive_plot + 
  scale_y_continuous(
    labels = trim_percent,
  trans  = "logit",
  breaks = c(0.01, 0.1, 0.5, 0.9, 0.99, 0.999, 0.9999, 0.99999))

ggsave(filename = "predictive_plot_linear.png",
       plot     = predictive_plot,
       dpi      = 400,
       width    = 150,
       height   = 75,
       units    = "mm")

ggsave(filename = "predictive_plot_logit.png",
       plot     = predictive_plot_logit,
       dpi      = 400,
       width    = 150,
       height   = 75,
       units    = "mm")

# End of File
