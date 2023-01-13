### R SCRIPT #2: ESTIMATING VOLUME OF LIMBS USING GENERATED MEASUREMENT DATA FOR BIOL 432 ASSIGNMENT 1
## FRI JAN 13 - RISHONA VEMULAPALLI 

# -----------------------------------------------------------------------------

# Estimating frog hind limb volume using length and width measurements (for the sake of this assignment,
    # I will consider width to be diameter, and length to be height, calculating volume of a cylinder).
# Although the volume of a cylinder is not a perfect approximation of the volume of these limbs,
    # it makes the most sense biologically and with the data available (opposed to a cube, cuboid, etc.)

# -----------------------------------------------------------------------------

# (1) Loading generated limb measurement dataset 
MyData2 <- read.csv("measurements.csv")
print(MyData2)


# (2) Calculating volume of cylinder = pi * radius^2 * height
  # Dividing limb width (diameter) by 2 to get radius, and squaring for equation 
MyData2 <- MyData2 %>%
  mutate(Volume = (pi * ((Limb_width / 2)^2) * Limb_length))
print(MyData2) # volume units are millimetres cubed (mm^3)


# (3) Overwriting original measurements.csv file to include volume column
write.csv(MyData2, file = "measurements.csv")
