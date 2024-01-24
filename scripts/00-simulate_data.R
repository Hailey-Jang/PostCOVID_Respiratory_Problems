#### Preamble ####
# Purpose: Simulate respiratory infection rates for Toronto in 2020 and 2023, providing a foundational dataset for analyzing the impact and trends in post-COVID respiratory health.
# Author: Hailey jang 
# Date: January 23, 2024
# Contact: hailey.jang@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(dplyr)

# Set seed for reproducibility
set.seed(123)

#### Simulate data ####
#### Simulate data ####
# Simulate data for 2020
data_2020 <- data.frame(
  Type_of_Outbreak = sample(c("gastroenteric", "respiratory", "others"), 100, replace = TRUE),
  Causative_Agent = sample(c("Rhinovirus", "Metapneumovirus", "Respiratory syncytial virus", "Influenza", "Parainfluenza", "Enterovirus"), 
                           100, replace = TRUE)
)

# Simulate data for 2023
data_2023 <- data.frame(
  Causative_Agent = sample(c("Rhinovirus", "Metapneumovirus", "Respiratory syncytial virus", "Influenza", "Parainfluenza", "Enterovirus"), 
                           100, replace = TRUE)
)

# Save simulated data to CSV files
write.csv(data_2020, "simulated_data_2020.csv", row.names = FALSE)
write.csv(data_2023, "simulated_data_2023.csv", row.names = FALSE)

# Print message
cat("Simulation complete. Simulated data saved as simulated_data_2020.csv and simulated_data_2023.csv\n")
