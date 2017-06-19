## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ------------------------------------------------------------------------
library(dplyr)
library(readr)
library(tidyr)
library(maps)
library(fatalityR) # This our package

## ------------------------------------------------------------------------
system.file("externaldata", "accident_2013.csv.bz2", package = "fatalityR")

## ------------------------------------------------------------------------

temp <- system.file("externaldata", "accident_2015.csv.bz2", package = "fatalityR")
dataset <- fars_read(temp)

head(dataset)



## ------------------------------------------------------------------------
year_file_name<- make_filename(2012)
year_file_name

## ------------------------------------------------------------------------
setwd(system.file("externaldata", package = "fatalityR"))
fars_read_years(2013:2015)


## ------------------------------------------------------------------------
setwd(system.file("externaldata", package = "fatalityR"))
fars_summarize_years(2013:2015)

## ------------------------------------------------------------------------
setwd(system.file("externaldata", package = "fatalityR"))
fars_map_state(1,2015)

