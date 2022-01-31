# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate<1 

# Get the indices of entries that are below 1
which(low)

# Names of states with murder rates lower than 1
murders$state[low]

# Create a vector ind for states in the Northeast and with murder rates lower than 1. 
ind<- murders$region == "Northeast" & low

# Names of states in `ind` 
murders$state[ind]