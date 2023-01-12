
### R SCRIPT #1: GENERATING LIMB MEASUREMENT DATA FOR BIOL 432 ASSIGNMENT 1
## THU JAN 12 - RISHONA VEMULAPALLI

# -----------------------------------------------------------------------------

# (1) Creating vector of 100 species names, randomly selected from vector of 5 species names. 
sp <- c("Pseudacris crucifer", "Pseudacris maculata", "Lithobates clamitans", 
        "Lithobates pipiens", "Dryophytes versicolor") # generating first vector of 5 names
Species <- sample(sp, 100, replace = TRUE) # sampling 100 values from sp vector, w/ replace = T to get repeat values
print(Species) 


# (2) Creating vector of 100 values for limb width using a normal (Gaussian) distribution.
Limb_width <- rnorm(100, mean = 20, sd = 2) # increased mean to avoid negative and zero values
print(Limb_width)


# (3) Creating vector of 100 values for limb length from a normal (Gaussian) distribution.
Limb_length <- rnorm(100, mean = 70, sd = 2) # increased mean to avoid negative and zero values
print(Limb_length)


# (4) Creating vector of 100 observer names, randomly selected from a vector of 3 names. 
obs <- c("Chloe", "Asher", "Graydon") # creating vector of 3 observers
Observer <- sample(obs, 100, replace = TRUE) # taking a random sample of 100 values from obs vector
print(Observer)


# (5) Combining all vectors into single data frame and exporting to a .csv file.
MyData <- data.frame(Species, Limb_width, Limb_length, Observer) # combining previous vectors
print(MyData) # checking the new data frame
write.csv(MyData, file = "measurements.csv") # exporting limb measurement data
