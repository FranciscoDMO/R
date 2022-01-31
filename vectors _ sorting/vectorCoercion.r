x<-  c(1, "canada" ,3)

class(x)

x<-1:5
y <- as.character(x)
as.numeric(y)

x<-c("1","b","3")
as.numeric(x)



#fazer com que a seq tenha 5 de tamanho 
x <- seq(0, 100, length.out = 5)



# Check the class of 1, assigned to the object a
class(1)

# Confirm the class of 1L is integer// ocupa menos memoria 
class(1L)