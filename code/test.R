# Evaluate inter- and intra- annual variability of basal gap
library(dplyr)
library(stringr)

# set up data ####
lpi <- read.csv("data/NWERN_dataLPI_2022-12-08.csv")

# remove instances of empty rows
lpi <- lpi %>% subset(code != "")

# unique PrimaryKey/ProjectKey combos
site_visits <- lpi %>% select(ProjectKey, PrimaryKey, DateVisited) %>%
  distinct()

# summarize data ####
site_visit_summary <- site_visits %>% group_by(ProjectKey) %>% count()


