#### Preamble ####
# Purpose: Tests all cases of the simulation and cleaning
# Author: Hailey jang 
# Date: January 23, 2024
# Contact: hailey.jang@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Read cleaned data ####
cleaned_data_2020 <- read.csv("cleaned_data_2020.csv")
cleaned_data_2023 <- read.csv("cleaned_data_2023.csv")

#### Data Cleaning Tests ####
# Test: Rows with 'gastroenteric' should be removed
test_that("Rows with 'gastroenteric' should be removed", {
  expect_false(any(cleaned_data_2020$Type_of_Outbreak %in% c('gastroenteric')))
  expect_false(any(cleaned_data_2023$Type_of_Outbreak %in% c('gastroenteric')))
})

# Test: Rows with 'others' should be removed
test_that("Rows with 'others' should be removed", {
  expect_false(any(cleaned_data_2020$Type_of_Outbreak %in% c('others')))
  expect_false(any(cleaned_data_2023$Type_of_Outbreak %in% c('others')))
})

# Test: Number of rows in cleaned datasets should not be greater than the original datasets
test_that("Number of rows in cleaned datasets should not be greater than the original datasets", {
  expect_true(nrow(cleaned_data_2020) <= nrow(read.csv("inputs/data/Respiratory_Problems_Data_2020.csv")))
  expect_true(nrow(cleaned_data_2023) <= nrow(read.csv("inputs/data/Respiratory_Problems_Data_2023.csv")))
})
