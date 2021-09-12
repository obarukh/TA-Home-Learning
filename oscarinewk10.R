
#Compulsory task

library(tidyverse)

Orange %>%
  filter(Tree != "1" &
           Tree != "2") %>%
  ggplot(aes(age, circumference, colour = Tree))+
  geom_point(size = 5, alpha = 0.3)+
  geom_line(size = 1)+
  theme_minimal()+
  labs(title = "Tree age and circumference")



#Additional tasks

#1.Write an R program to create three vectors a, b, c with 5 integers. Combine the three vectors to become a 3×5 matrix where each column represents a vector. Print the content of the matrix. Plot a graph and label correctly.
#Creating 3 vectors of 5 integers
a <- c(30, 49, 29, 19, 20)
b <- c(20, 19, 7, 33, 17)
c <- c(46, 57, 20, 13, 11)

#Combining the vectors in 3x5 matrix by columns.
 matrix <- cbind(a, b, c)
print(matrix)

#Plotting the graph
barplot(matrix, 
        col = c("#1b98e0", "#353436"))


#2.Write a R program to create a Data frames which contain details of 5 employees and display the details. 
#(Name, Age, Role and Length of service).

  Data_Frame = data.frame(Name <- c("Anna S", "Sam D", "Otis S", "Carol C", "Cookie L"),
  Age <- c(23, 33, 43, 20, 50),
  Role <- c("Accountant", "Assistant", "Manager", "CEO", "CFO"),
  LOS <-  C(1, 3, 5, 4, 8)
  )  
  Data_Frame

#3.Import the GGPLOT 2 library and plot a graph using the qplot function. 
# x  axis is the sequence of 1:20 and the y axis is the x ^ 2.
#Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)

install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

x <- seq(1:20)
y <- x ^ 2
plot(x, y, type="l", main="My Graph", col="blue")

#4.Create a simple bar plot of five subjects

a <- c("Maths", "English", "History", "PE", "Physics")

barplot(a) 
        
       

#5.Write a R program to take input from the user (name and age) and display the values.
my.name <- readline(prompt="Input your name: ")
my.age <-  readline(prompt="Input your age: ")
my.age <- as.integer(my.age)
print(paste("My name is", my.name, "and I am", my.age ,"years old."))


#6.Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 50 and sum of numbers.
print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 50:")
print(mean(20:50))
print("Sum of numbers from 20 to 50:")
print(sum(20:50))

#7. Write a R program to create a vector which contains 10 random integer values between -50 and +50
vec <- sample(-50:50, 10, replace=TRUE)
print("Content of the vector:")
print("10 random integer values between -50 and +50:")
print(vec)

#Optional tasks

#1. Write a R program to get the first 10 Fibonacci numbers.

Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

#2. Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both.

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}
