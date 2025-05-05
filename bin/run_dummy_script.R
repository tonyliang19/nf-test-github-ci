#!/usr/bin/env Rscript

# This calls bunch of library and print session info

# And print input
library(dplyr)
library(cowplot)

params <- commandArgs(trailingOnly=TRUE)

si <- sessionInfo()

print(si)
