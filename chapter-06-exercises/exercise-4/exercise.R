# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(string1, string2) {
  length_string1 <- nchar(string1)
  length_string2 <- nchar(string2)
  
  length_string1 >= 2 * length_string2 | length_string2 >= 2 * length_string1
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
print(is_twice_as_long("hello", "hell"))
print(is_twice_as_long("helloo", "cat"))
print(is_twice_as_long("cat", "helloo"))
print(is_twice_as_long("cat", "hat"))

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1, string2) {
  length_string1 <- nchar(string1)
  length_string2 <- nchar(string2)
  
  if (length_string1 > length_string2) {
    difference <- length_string1 - length_string2
    return(paste("Your first string is longer by", difference, "characters"))
  } else if (length_string2 > length_string1) {
    difference <- length_string2 - length_string1
    return(paste("Your second string is longer by", difference, "characters"))
  }
  
  "Your strings are the same length!"
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions!
print(describe_difference("cat", "kitten"))
print(describe_difference("kitten", "cat"))
print(describe_difference("cat", "hat"))
