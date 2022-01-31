# Loading data
library(dslabs)
data(murders)

# Loading dplyr
library(dplyr)

# Redefine murders so that it includes a column named rate with the per 100,000 murder rates
rate <-  murders$total/ murders$population * 100000

# Note that if you want ranks from highest to lowest you can take the negative and then compute the ranks 
x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining rate
rate <-  murders$total/ murders$population * 100000

# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest

murders <- mutate(murders, rank = rank(-rate) )


# Use select to only show state names and abbreviations from murders
select(murders , state , abb)

# Filter to show the top 5 states with the highest murder rates
filter (murders, rank <=5)

# Use filter to create a new data frame no_south
no_south <- data.frame( filter(murders , !(region == "South")) )
# Use nrow() to calculate the number of rows
nrow(no_south)

# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- data.frame( filter(murders, region %in% c("Northeast", "West"))) 

# Number of states (rows) in this category 
nrow(murders_nw)


# Create a table, call it my_states, that satisfies both the conditions 
murders_nw <- data.frame( filter(murders, region %in% c("Northeast", "West") , rate<1  )) 

# Use select to show only the state name, the murder rate and the rank
select(murders_nw, state , rate, rank)


## Define the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# show the result and only include the state, rate, and rank columns, all in one line, in that order
murders %>% select(state, rate, rank) %>% filter( murders$region %in% c("Northeast", "West") & rate<1  )

# reset 
data(murders)


# Create new data frame called my_states (with specifications in the instructions)
my_states <- murders %>% mutate(rate =  total / population * 100000, rank = rank(-rate))%>% filter( region %in% c("Northeast", "West") & rate<1  ) %>% select(state, rate, rank) 