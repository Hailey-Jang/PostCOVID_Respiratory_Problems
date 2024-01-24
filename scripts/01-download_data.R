#### Preamble ####
# Purpose: Downloads and saves the data from OpenDataToronto
# Author: Hailey Jang 
# Date: January 23, 2024
# Contact: hailey.jang@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
# Got the data from OpenDataToronto
# Code based on https://open.toronto.ca/dataset/outbreaks-in-toronto-healthcare-institutions/

# Read CSV file 
# Data of respiratory problems in 2020
raw_respiratory_problems_2020 <-
  read_csv(
    file = "https://ckan0.cf.opendata.inter.prod-toronto.ca/tl/datastore/dump/2bbbb602-f621-4f78-af5c-0d604fd63831", 
    show_col_types = FALSE
  )

# Data of respiratory problems in 2023
raw_respiratory_problems_2023 <-
  read_csv(
    file = "https://ckan0.cf.opendata.inter.prod-toronto.ca/tl/datastore/dump/15ac28a1-ece5-4a97-8e72-11227be9f4f7",
    show_col_types = FALSE
  )

#### Save data ####

# Save our acquired respiratory problems rates in 2020
write.csv(
  x = raw_respiratory_problems_2020, 
  file = "inputs/data/Respiratory_Problems_Data_2020.csv"
)

# Save our acquired respiratory problems rates in 2023
write.csv(
  x = raw_respiratory_problems_2023, 
  file = "inputs/data/Respiratory_Problems_Data_2023.csv"
)
