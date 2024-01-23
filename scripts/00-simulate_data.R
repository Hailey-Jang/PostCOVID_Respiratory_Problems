#### Preamble ####
# Purpose: Simulate respiratory infection rates for Toronto in 2020 and 2023, providing a foundational dataset for analyzing the impact and trends in post-COVID respiratory health.
# Author: Hailey jang 
# Date: January 23, 2024
# Contact: hailey.jang@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(ggplot)

#### Simulate data ####
# Set a seed for reproducibility
set.seed(123)

# Simulate data for respiratory infections in Toronto for 2020 and 2023
respiratory_data <- data.frame(
  Year = rep(c(2020, 2023), each = 100),
  Infection_Rate = c(rnorm(100, mean = 5, sd = 2), rnorm(100, mean = 7, sd = 3))
)

#### Visualize the data with ggplot2 ####
# Create a bar plot to compare infection rates between 2020 and 2023
ggplot(respiratory_data, aes(x = factor(Year), y = Infection_Rate, fill = factor(Year))) +
  geom_bar(stat = "identity", position = "dodge", color = "black") +
  labs(title = "Comparison of Respiratory Infection Rates (2020 vs. 2023)",
       x = "Year",
       y = "Infection Rate") +
  scale_fill_manual(values = c("#0072B2", "#D55E00")) +
  theme_minimal()
