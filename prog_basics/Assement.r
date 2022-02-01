
x <- c(1,2,-3,4)
if(all(x>0)){
  print("All Positives")
} else{
  print("Not All Positives")
}

# Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse( nchar(murders$state)>8, murders$abb, murders$state)

# Create function called `sum_n`
sum_n <- function (x){
  y<- sum(1:x)
  y
}
# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)

# Create `altman_plot` 
altman_plot <- function(x, y){
  plot(x+y,y-x )
}
#
x <- 3
my_func <- function(y){
  x <- 5
  y+5
}

# Print the value of x 
print(x)

# Here is an example of a function that adds numbers from 1 to n
example_func <- function(n){
  x <- 1:n
  sum(x)
}

# Here is the sum of the first 100 numbers
example_func(100)

# Write a function compute_s_n with argument n that for any given n computes the sum of 1 + 2^2 + ...+ n^2
compute_s_n<- function(n){
  x <- 1:n
  sum(x^2)
}
# Report the value of the sum when n=10
compute_s_n(10)

# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Create a vector for storing results
s_n <- vector("numeric", 25)

# write a for-loop to store the results in s_n
n=25
for(i in 1:n){
  x <- 1:i
  s_n[i] <- sum(x^2)
}

#  Create the plot 
plot(n,s_n)

# Check that s_n is identical to the formula given in the instructions.
identical(s_n[i], (i*(i+1)*(2*i+1))/6 )