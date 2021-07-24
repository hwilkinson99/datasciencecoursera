#Matrix() example
#type ?matrix() for help on the Matrix function

my.data <- 1:20
my.data

#Call the matrix function and give it the number 4 (number of rows) pass
#the number 5 for the number of columns we want in the matrix
#A <- matrix(vector, rows=numeric, columns=numeric)
A <- matrix(my.data, 4, 5)
A

#Indexing through a matrix [R,C]
A[2,3]

#Create a matrix with matrix() by creating rows in sequence
B <- matrix(my.data, 4, 5, byrow = T)
B

#Get the number 10 in this matrix
B[2, 5]

#Let's use rbind and cbind now

r1 <- c("I", "Am", "Happy")
r2 <- c("What", "A", "Day")
r3 <- c(1, 2, 3)

C <- rbind(r1, r2, r3)


D <- cbind(r1, r2, r3)

