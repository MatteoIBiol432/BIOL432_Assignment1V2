#load library
library(tibble)

#make species
species_names <- c("Curculionoidea", "Sagittarius serpentarius", "Homo sapiens", "Hydrochoerus hydrochaeris", "Hemidactylus frenatus")

#set seet, generate date for the table
set.seed(123)
limb_width <- abs(rnorm(100, mean = 2, sd = 0.5))
limb_length <- abs(rnorm(100, mean = 30, sd = 10))
observers <- c("Matteo", "Mason", "Gabriel")
observer <- sample(observers, 100, replace = TRUE)

#put data in table
data <- tibble(
  Organism = sample(species_names, 100, replace = TRUE),
  Limb_width = limb_width,
  Limb_length = limb_length,
  Observer = observer
)

#write to csv
write.csv(data, "measurements.csv", row.names = FALSE)