if (!require("stringr")) install.packages("stringr")
library("stringr")
if (!require("stringdist")) install.packages("stringdist")
library("stringdist")


source('./Analyse & script R/myPalette.R')
source('./Analyse & script R/NanoMean.R')
source('./Analyse & script R/InnerFilter.R')
source('./Analyse & script R/PARAFAC.cube.design.R')
source('./Analyse & script R/plot.eem.go.richard.R')
source('./Analyse & script R/plot.integrate.RAMAN.R')
source('./Analyse & script R/read.EEM.Richard.R')
source('./Analyse & script R/subtract.blank.plot.EEMs.Richard.R')
source('./Analyse & script R/plot.integrate.RAMAN.go.R')
source('./Analyse & script R/PlotAllEEM.R')
source('./Analyse & script R/ExportEEM.R')


cube=PARAFAC.cube.design()
