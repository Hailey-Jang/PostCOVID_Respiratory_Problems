#### Preamble ####
# Purpose: Cleans the raw data that is not included in respiratory problems
# Author: Hailey jang 
# Date: January 23, 2024
# Contact: hailey.jang@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(dplyr)

#### Read downloaded data ####
# Assuming you have downloaded the data as CSV files
data_2020 <- read.csv("inputs/data/Respiratory_Problems_Data_2020.csv")
data_2023 <- read.csv("inputs/data/Respiratory_Problems_Data_2023.csv")

#### Data Cleaning ####
# Filter out rows with Type_of_Outbreak 'Enteric' and 'others'
cleaned_data_2020 <- data_2020 %>% filter(Type_of_Outbreak != "Enteric" & Type_of_Outbreak != "others")
cleaned_data_2023 <- data_2023 %>% filter(Type_of_Outbreak != "Enteric" & Type_of_Outbreak != "others")

#### Save cleaned data ####
# Save cleaned data to CSV files
write.csv(cleaned_data_2020, "cleaned_data_2020.csv", row.names = FALSE)
write.csv(cleaned_data_2023, "cleaned_data_2023.csv", row.names = FALSE)

# Print message
cat("Cleaning complete. Cleaned data saved as cleaned_data_2020.csv and cleaned_data_2023.csv\n")
