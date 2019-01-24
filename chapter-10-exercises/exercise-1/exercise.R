# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
seahawks_points <- c(24, 17, 24, 20)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
opponent_points <- c(27, 24, 13, 17)

# Combine your two vectors into a dataframe called `games`
games <- data.frame(seahawks_points, opponent_points)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
games[["diff"]] <- abs(seahawks_points - opponent_points)

# Create a new column "won" which is TRUE if the Seahawks won the game
games[["won"]] <- seahawks_points > opponent_points

# Create a vector of the opponent names corresponding to the games played
opponent_names <- c("Broncos", "Bears", "Cowboys", "Cardinals")

# Assign your dataframe rownames of their opponents
rownames(games) <- opponent_names

# View your data frame to see how it has changed!
View(games)
