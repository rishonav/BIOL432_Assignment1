
### R SCRIPT #1: GENERATING LIMB MEASUREMENT DATA FOR BIOL 432 ASSIGNMENT 1
## FRI JAN 13 - RISHONA VEMULAPALLI

# -----------------------------------------------------------------------------

# (1) Creating vector of 100 species names, randomly selected from vector of 5 species names. 
sp <- c("Pseudacris crucifer", "Pseudacris maculata", "Lithobates clamitans", 
        "Lithobates pipiens", "Dryophytes versicolor") # generating first vector of 5 names
set.seed(5)
Species <- sample(sp, 100, replace = TRUE) # sampling 100 values from sp vector, w/ replace = T to get repeat values
print(Species) 


# (2) Creating vector of 100 random values for limb width from a normal distribution.
set.seed(15)
Limb_width <- rnorm(100, mean = 3, sd = 1) # lower standard deviation to avoid negative numbers
print(Limb_width)


# (3) Creating vector of 100 random values for limb length from a normal distribution.
set.seed(20)
Limb_length <- rnorm(100, mean = 7, sd = 1)
print(Limb_length)


# (4) Creating vector of 100 observer names, randomly selected from a vector of 3 names. 
obs <- c("Chloe", "Asher", "Graydon") # vector of 3 observers
set.seed(30)
Observer <- sample(obs, 100, replace = TRUE) # random sample of 100 values from obs vector
print(Observer)


# (5) Combining all vectors into single data frame and exporting to a .csv file.
MyData1 <- data.frame(Species, Limb_width, Limb_length, Observer) # combining previous vectors
print(MyData1) # checking the new data frame
str(MyData1)

write.csv(MyData1, file = "measurements.csv", row.names = FALSE) # exporting limb measurement data
