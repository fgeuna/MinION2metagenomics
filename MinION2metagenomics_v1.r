# MinION2metagenomics
# Version 1.0
# 20-11-2023

# Install and load the "dplyr" package:
if (!require("dplyr")) {
  install.packages("dplyr")
}

library(dplyr)

# Set the working directory with the input file(s):
setwd("/path/to/your/files")


# Import your file:
# ATTENTION: check the delimiting character of your input file!!
ONT_Results_16S <- read.delim("SOMMELIER_2_16s_barcode.csv", sep = ",", header=TRUE, row.names=NULL)
View(ONT_Results_16S)


# Load the "species" count:
risultati <- ONT_Results_16S %>% count(species)
View(risultati)

# Filter rows to count the occurrences of all microbial species for each 'barcode' (sample):

barcode01 <- ONT_Results_16S %>% filter(barcode == "barcode01")

barcode02 <- ONT_Results_16S %>% filter(barcode == "barcode02")

barcode03 <- ONT_Results_16S %>% filter(barcode == "barcode03")

barcode04 <- ONT_Results_16S %>% filter(barcode == "barcode04")

barcode05 <- ONT_Results_16S %>% filter(barcode == "barcode05")

barcode06 <- ONT_Results_16S %>% filter(barcode == "barcode06")

barcode07 <- ONT_Results_16S %>% filter(barcode == "barcode07")

barcode08 <- ONT_Results_16S %>% filter(barcode == "barcode08")

barcode09 <- ONT_Results_16S %>% filter(barcode == "barcode09")

barcode10 <- ONT_Results_16S %>% filter(barcode == "barcode10")

barcode11 <- ONT_Results_16S %>% filter(barcode == "barcode11")

barcode12 <- ONT_Results_16S %>% filter(barcode == "barcode12")

barcode13 <- ONT_Results_16S %>% filter(barcode == "barcode13")

barcode14 <- ONT_Results_16S %>% filter(barcode == "barcode14")

barcode15 <- ONT_Results_16S %>% filter(barcode == "barcode15")

barcode16 <- ONT_Results_16S %>% filter(barcode == "barcode16")

barcode17 <- ONT_Results_16S %>% filter(barcode == "barcode17")

barcode18 <- ONT_Results_16S %>% filter(barcode == "barcode18")

barcode19 <- ONT_Results_16S %>% filter(barcode == "barcode19")

barcode20 <- ONT_Results_16S %>% filter(barcode == "barcode20")

barcode21 <- ONT_Results_16S %>% filter(barcode == "barcode21")

barcode22 <- ONT_Results_16S %>% filter(barcode == "barcode22")

barcode23 <- ONT_Results_16S %>% filter(barcode == "barcode23")

barcode24 <- ONT_Results_16S %>% filter(barcode == "barcode24")


# From 'risultati' get the list of all microbial species (barcode):
ont2illumina <- data.frame(species = risultati$species, freq = risultati$n)
View(ont2illumina)


# Calculates the count of reads for each species along the 24 barcodes (samples):
i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) { 
  value_to_count <- risultati$species[i]
  species_number <- c(species_number, length(which(barcode01$species == value_to_count)))
  print(species_number)
}

ont2illumina$sample01 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  species_number <- c(species_number, length(which(barcode02$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample02 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  species_number <- c(species_number, length(which(barcode03$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample03 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode04$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample04 <- species_number   

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode05$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample05 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i] 
  species_number <- c(species_number, length(which(barcode06$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample06 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  species_number <- c(species_number, length(which(barcode07$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample07 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  species_number <- c(species_number, length(which(barcode08$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample08 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  species_number <- c(species_number, length(which(barcode09$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample09 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  species_number <- c(species_number, length(which(barcode10$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample10 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  species_number <- c(species_number, length(which(barcode11$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample11 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode12$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample12 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode13$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample13 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode14$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample14 <- species_number   

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode15$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample15 <- species_number   

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode16$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample16 <- species_number 

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode17$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample17 <- species_number   

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode18$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample18 <- species_number   

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode19$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample19 <- species_number   

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode20$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample20 <- species_number   

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode21$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample21 <- species_number   

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode22$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample22 <- species_number   

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode23$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample23 <- species_number   

i <- 1
species_number <- c()
for (i in 1:(length(ont2illumina$species))) {  
  value_to_count <- risultati$species[i]  
  
  species_number <- c(species_number, length(which(barcode24$species == value_to_count)))
  print(species_number)
} 

ont2illumina$sample24 <- species_number 




