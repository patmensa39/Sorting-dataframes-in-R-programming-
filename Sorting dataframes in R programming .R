### Sorting Dataframes in R programming ###
worms<-read.table("worms.txt", header = TRUE)
View(worms)
attach(worms)

# Sorting the Vegetation 
worms[order(Vegetation), ]

# Sorting the Area 
worms[order(Area), ]

# Sorting the Slope 
worms[order(Slope), ] #Remember that when there are ties, the rows remain in their original order 

## Reversing the order, we use the reverse function inside the order function

#Reversing the Vegetation
worms[rev(order(Vegetation)), ]

# Reveersing the Area 
worms[rev(order(Area)), ]

# Reversing the Slope 
worms[rev(order(Slope)), ] #When there are slopes, the original rows are also in reversing order


### SORTING TWO OR MORE VARIABLES
#Sorting two or more variable. R will sort on the basis of
# the left-hand variable, with ties being broken by the second variable, and so on.

worms[order(Field.Name, Soil.pH), ] # Ordering Field.Name and  Soil.pH
worms[order(Field.Name, Vegetation, Worm.density), ] #Ordering Field.Name , Vegetation and Worm density

# Arranging the order in a sequence we want them to appear and concatenate them
worms[order(Field.Name, Vegetation, Soil.pH), c(1,4,7,5)]

# You can select the columns based on their variable names 
worms[order(Field.Name, Vegetation, Soil.pH), c("Field.Name", "Vegetation", "Worm.density", "Soil.pH")]















