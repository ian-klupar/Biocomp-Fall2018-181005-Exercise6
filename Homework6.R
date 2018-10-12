rm(list=ls())
setwd("/Users/ianklupar/Desktop/data-shell/class/Biocomp-Fall2018-181005-Exercise6-master")
iris = read.csv("iris.csv", header=T, sep=',', stringsAsFactors = F)

#1.
#print first 10 numbers in sepal length column
head(iris$Sepal.Length, n=10)
### Brittni: We wanted you to recreate head without using head. I took off 0.2 points:
## nlines=10
## iris[1:nlines]

#2.
#last 2 rows of the last two columns of iris.csv
last = tail(iris, n=2)
last[,4:5]

#number of observations for each species
length(iris$Species[iris$Species=="setosa"])
length(iris$Species[iris$Species=="versicolor"])
length(iris$Species[iris$Species=="virginica"])

#rows with sepal width > 3.5
rows <- iris[iris$Sepal.Width>3.5,]
length(rows)

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa <- iris[iris$Species=="setosa",]
write.csv(setosa, file = "setosa.csv")

#calculate the mean, minimum, and maximum of Petal.Length for observations of virginica
virginica <- iris[iris$Species=="virginica",]
min(virginica$Petal.Length)
max(virginica$Petal.Length)
mean(virginica$Petal.Length)



