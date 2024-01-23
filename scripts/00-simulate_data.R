#### Preamble ####
# Purpose: Simulates youth wellbeing data that is used for the analysis. 
# Author: Hailey jang 
# Date: January 22 2024
# Contact: hailey.jang@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(dplyr)

#### Simulate data ####

# Set seed for reproducibility
set.seed(123)

# Simulate dataset
n_obs <- 1000 

# Simulate legal status variable
legal_status <- sample(c("Legal", "Not Legal"), n_obs, replace = TRUE, prob = c(0.7, 0.3))

# Simulate program types
program_types <- sample(c("Information and Referral", "12-Step Support Groups", "Counseling", "Day Treatment", "Residential Treatment"), n_obs, replace = TRUE)

# Simulate youth well-being indicators (replace with actual indicators)
wellbeing_indicators <- rnorm(n_obs, mean = 50, sd = 10)

# Create simulated dataset
simulated_data <- data.frame(legal_status, program_types, wellbeing_indicators)

# Explore the structure of the simulated dataset
str(simulated_data)

# Summary statistics
summary(simulated_data)


