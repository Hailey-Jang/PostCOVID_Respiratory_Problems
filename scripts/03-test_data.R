#### Preamble ####
# Purpose: Tests all cases of the simulation and cleaning
# Author: Hailey jang 
# Date: January 23, 2024
# Contact: hailey.jang@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Test data ####
# Set a seed for reproducibility
set.seed(123)

# Simulate data for respiratory infections in Toronto for 2020 and 2023
respiratory_data <- data.frame(
  Year = rep(c(2020, 2023), each = 100),
  Infection_Rate = c(rnorm(100, mean = 5, sd = 2), rnorm(100, mean = 7, sd = 3))
)

# Save the simulated data
write_csv(respiratory_data, "inputs/data/Respiratory_Problems_Data_Simulated.csv")

# Test the data cleaning script
source("scripts/02-data_cleaning.R")

# Print a summary or glimpse of the cleaned data
cat("Cleaned 2020 data:\n")
print(glimpse(cleaned_raw_respiratory_problems_2020))

cat("\nCleaned 2023 data:\n")
print(glimpse(cleaned_raw_respiratory_problems_2023))
