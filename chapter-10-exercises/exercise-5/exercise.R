# Exercise 5: large data sets: Baby Name Popularity Over Time

# Read in the female baby names data file found in the `data` folder into a 
# variable called `names`. Remember to NOT treat the strings as factors!
baby_names <- read.csv("data/female_names.csv", stringsAsFactors = FALSE)

# Create a data frame `names_2013` that contains only the rows for the year 2013
names_2013 <- baby_names[baby_names$year == 2013, ]

# What was the most popular female name in 2013?
biggest_prop <- max(names_2013$prop)
most_popular_2013 <- baby_names[baby_names$prop == biggest_prop, "name"]

# Write a function `most_popular_in_year` that takes in a year as a value and 
# returns the most popular name in that year
most_popular_in_year <- function(year_x) {
  names_year <- baby_names[baby_names$year == year_x, ]
  most_popular_name <- baby_names[baby_names$prop == max(names_year$prop), "name"]
}

# What was the most popular female name in 1994?
most_popular_1994 <- most_popular_in_year(1994)

# Write a function `number_in_million` that takes in a name and a year, and 
# returns statistically how many babies out of 1 million born that year have 
# that name. 
# Hint: get the popularity percentage, and take that percentage out of 1 million.
number_in_million <- function(name_x, year_x) {
  names_year <- baby_names[baby_names$year == year_x, ]
  proportion <- names_year[names_year$name == name_x, "prop"]
  round(1000000 * proportion)
}

# How many babies out of 1 million had the name 'Laura' in 1995?
number_in_million("Laura", 1995)

# How many babies out of 1 million had your name in the year you were born?
number_in_million("Maya", 2000)

## Consider: what does this tell you about how easy it is to identify you with 
## just your name and birth year?
