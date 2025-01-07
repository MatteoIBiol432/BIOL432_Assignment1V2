#load library
library(dplyr)

#read data from files
data <- read.csv("./measurements.csv")

#check if the colnames match what is required
required_columns <- c("Organism", "Limb_width", "Limb_length", "Observer")
if (!all(required_columns %in% colnames(data))) {
  stop("Error: incorrect column names")
}

#add the volume column
data <- data %>%
  mutate(Volume = pi * (Limb_width / 2)^2 * Limb_length)


#add column to the table
write.csv(data, "measurements.csv", row.names = FALSE)