#a<- 2 
#b<- -1
#c<- -4


#total<- (-b - sqrt(b^2-4*a*c) )/ (2*a)
#print(total)
#total1<- (-b + sqrt(b^2-4*a*c) )/ (2*a)
#print(total1)

#log(1024,4)

library (dslabs)
data(movielens)
str(movielens)

length(row.names(movielens))
class(movielens$title)
class(movielens$genres)
nlevels(movielens$genres)