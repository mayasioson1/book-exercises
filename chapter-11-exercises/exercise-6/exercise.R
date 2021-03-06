# Exercise 6: dplyr join operations

# Install the `"nycflights13"` package. Load (`library()`) the package.
# You'll also need to load `dplyr`
#install.packages("nycflights13")  # should be done already
library("nycflights13")
library("dplyr")

# Create a dataframe of the average arrival delays for each _destination_, then 
# use `left_join()` to join on the "airports" dataframe, which has the airport
# information
# Which airport had the largest average arrival delay?
arr_delay_by_dest <- flights %>%
  group_by(dest) %>%
  summarize(avg_arr_delay = mean(arr_delay, na.rm = TRUE))

combined_delay_info <- left_join(arr_delay_by_dest, airports, by = c("dest" = "faa"))

largest_arr_delay <- combined_delay_info %>%
  filter(avg_arr_delay == max(avg_arr_delay, na.rm = TRUE)) %>%
  select(name)

# Create a dataframe of the average arrival delay for each _airline_, then use
# `left_join()` to join on the "airlines" dataframe
# Which airline had the smallest average arrival delay?
arr_delay_by_airline <- flights %>%
  group_by(carrier) %>%
  summarize(avg_arr_delay = mean(arr_delay, na.rm = TRUE)) %>%
  left_join(airlines, by = "carrier")

smallest_arr_delay <- arr_delay_by_airline %>%
  filter(avg_arr_delay == min(avg_arr_delay, na.rm = TRUE)) %>%
  select(name)