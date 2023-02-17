---
layout: paper
title: Fitting stochastic epidemic models to gene genealogies using linear noise approximation
image: /images/papers/tang-phylodynamic-lna.png
authors: Tang M, Dudas G, Bedford T, Minin VN.
year: 2023
ref: Tang et al. 2023. Ann Appl Stat.
journal: "Ann Appl Stat 17: 1-22."
pdf: /pdfs/papers/tang-phylodynamic-lna.pdf
github: https://github.com/MingweiWilliamTang/LNAphyloDyn
doi: 10.1214/21-AOAS1583
---

# Abstract

Phylodynamics is a set of population genetics tools that aim at reconstructing demographic history of a population based on molecular sequences of individuals sampled from the population of interest. One important task in phylodynamics is to estimate changes in (effective) population size. When applied to infectious disease sequences, such estimation of population size trajectories can provide information about changes in the number of infections. To model changes in the number of infected individuals, current phylodynamic methods use nonparametric approaches (e.g., Bayesian curve-fitting based on change-point models or Gaussian process priors), parametric approaches (e.g., based on differential equations), and stochastic modeling in conjunction with likelihood-free Bayesian methods. The first class of methods yields results that are hard to interpret epidemiologically. The second class of methods provides estimates of important epidemiological parameters, such as infection and removal/recovery rates, but ignores variation in the dynamics of infectious disease spread. The third class of methods is the most advantageous statistically but relies on computationally intensive particle filtering techniques that limits its applications. We propose a Bayesian model that combines phylodynamic inference and stochastic epidemic models and achieves computational tractability by using a linear noise approximation (LNA)—a technique that allows us to approximate probability densities of stochastic epidemic model trajectories. LNA opens the door for using modern Markov chain Monte Carlo tools to approximate the joint posterior distribution of the disease transmission parameters and of high dimensional vectors describing unobserved changes in the stochastic epidemic model compartment sizes (e.g., numbers of infectious and susceptible individuals). In a simulation study we show that our method can successfully recover parameters of stochastic epidemic models. We apply our estimation technique to Ebola genealogies estimated using viral genetic data from the 2014 epidemic in Sierra Leone and Liberia.
