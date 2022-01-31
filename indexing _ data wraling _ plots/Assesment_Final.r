library(dslabs)
data(heights)
options(digits = 3)
str(heights)
average = sum(heights$height)/length(heights$height)
average
ind <- filter(heights, height > average )
nrow(ind)

femaleAboveAverage <- filter(heights, height > average , sex %in% c("Female", "West") )
nrow(femaleAboveAverage)


mean( heights$sex == "Female")

min1 <- min(heights$height)

index <-match(min1 , heights$height )

heights$height[index]

max1 <- max(heights$height)
max1


x<-min1 :max1
x

sum(! (x %in% heights$height) )


cm <- heights$height *2.54
heights2 <-  mutate(heights, cm )


heights2$cm[18]
mean(heights2$cm)

f <- filter(heights2 , sex == "Female")
nrow(f)
mean(f$cm)

library(dslabs)
data(olive)
head(olive)

plot(olive$palmitic , olive$palmitoleic)

hist(olive$eicosenoic)

boxplot(palmitic~region, data = olive)
