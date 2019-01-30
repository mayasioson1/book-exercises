# Exercise 3: using the pipe operator

# Install (if needed) and load the "dplyr" library
#install.packages("dplyr")
library("dplyr")

# Install (if needed) and load the "fueleconomy" package
#install.packages('devtools')
#devtools::install_github("hadley/fueleconomy")
library("fueleconomy")

# Which 2015 Acura model has the best hwy MGH? (Use dplyr, but without method
# chaining or pipes--use temporary variables!)
vehicles_2015_acura <- filter(vehicles, year == 2015, make == "Acura")
best_hwy_mpg <- max(vehicles_2015_acura$hwy)
best_vehicle_hwy <- filter(vehicles_2015_acura, hwy == best_hwy_mpg)
best_vehicle_hwy_model <- select(best_vehicle_hwy, model)

# Which 2015 Acura model has the best hwy MPG? (Use dplyr, nesting functions)
best_hwy <- filter(vehicles, year == 2015, make == "Acura")

# Which 2015 Acura model has the best hwy MPG? (Use dplyr and the pipe operator)
best_model <- vehicles %>%
  filter(year == 2015, make == "Acura") %>%
  filter(hwy == max(hwy)) %>%
  select(model)

### Bonus

# Write 3 functions, one for each approach.  Then,
# Test how long it takes to perform each one 1000 times
