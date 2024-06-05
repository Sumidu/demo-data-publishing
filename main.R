# Data cleaning

source("raw/survey_456893_R_syntax_file.R")

raw_data <- data
rm(data)


library(tidyverse)
library(labelled)


raw_data <- as_tibble(raw_data)
named_data <- set_variable_labels(.data = raw_data, .labels = attributes(raw_data)$variable.labels)

# value labels do not make sense for Lime Survey data, as all factors already have levels and labels
#
#var_names <- names(named_data)
#for (var_name in var_names) {
#  value_lab <- attributes(named_data %>% pull(var_name))$levels
#  val_labels(named_data[[var_name]]) <- value_lab
#}



clean_data <- named_data %>%
  # remove unfinished respondents
  filter(lastpage == 4) %>%
  # remove columns that are not needed or do not contain any data
  select(-submitdate, -startlanguage, -studyProgram_other)

# ADD project specific cleaning code ----
# Factor scores
# remove timing data if not necessary


clean_data %>% write_csv("data/clean_data.csv")
clean_data %>% write_rds("data/clean_data.rds")

library(feather)
clean_data %>% write_feather("data/clean_data.feather")

labelled::generate_dictionary(clean_data) %>% write_csv("data/data_dictionary.csv")


