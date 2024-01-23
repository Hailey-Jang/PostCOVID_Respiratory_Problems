#### Preamble ####
# Purpose: Cleans the raw data that is not included in respiratory problems
# Author: Hailey jang 
# Date: January 23, 2024
# Contact: hailey.jang@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)

#### Clean data ####

# Read and clean the 2020 dataset
raw_respiratory_problems_2020 <- 
  read_csv("inputs/data/Respiratory_Problems_Data_2020.csv") %>%
  filter(`Type of Outbreak` == "Respiratory")

cleaned_raw_respiratory_problems_2020 <-
  raw_respiratory_problems_2020 %>%
  # Add any additional data cleaning steps if needed
  select(Enteric, other) %>%

# Read and clean the 2023 dataset
raw_respiratory_problems_2023 <- 
  read_csv("inputs/data/Respiratory_Problems_Data_2023.csv") %>%
  filter(`Type of Outbreak` == "Respiratory")

cleaned_raw_respiratory_problems_2023 <-
  raw_respiratory_problems_2023 %>%
  # Add any additional data cleaning steps if needed
  select(Enteric, other) %>%

#### Save data ####

# Save the cleaned 2020 dataset
write_csv(cleaned_raw_respiratory_problems_2020, 
          "outputs/data/cleaned_Respiratory_Problems_Data_2020.csv")

# Save the cleaned 2023 dataset
write_csv(cleaned_raw_respiratory_problems_2023, 
          "outputs/data/cleaned_Respiratory_Problems_Data_2023.csv")
