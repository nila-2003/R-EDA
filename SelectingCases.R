library(datasets)  
head(iris)

hist(iris$Petal.Length)
summary(iris$Petal.Length)

summary(iris$Species)  

# Versicolor
hist(iris$Petal.Length[iris$Species == "versicolor"],
  main = "Petal Length: Versicolor")

# Virginica
hist(iris$Petal.Length[iris$Species == "virginica"],
  main = "Petal Length: Virginica")

# Setosa
hist(iris$Petal.Length[iris$Species == "setosa"],
  main = "Petal Length: Setosa")

# Short petals only (all Setosa)
hist(iris$Petal.Length[iris$Petal.Length < 2],
  main = "Petal Length < 2")

# Short Virginica petals only
hist(iris$Petal.Length[iris$Species == "virginica" & 
  iris$Petal.Length < 5.5],
  main = "Petal Length: Short Virginica")

# Format: data[rows, columns]
# Leave rows or columns blank to select all
i.setosa <- iris[iris$Species == "setosa", ]

head(i.setosa)
summary(i.setosa$Petal.Length)
hist(i.setosa$Petal.Length)

rm(list = ls()) 

detach("package:datasets", unload = TRUE)  # For base

dev.off()

cat("\014") 