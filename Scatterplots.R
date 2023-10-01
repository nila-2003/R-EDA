library(datasets)
head(iris)
?plot
plot(iris$Species)
plot(iris$Sepal.Length)
plot(iris$Species, iris$Petal.Width)
plot(iris$Petal.Length, iris$Petal.Width)
plot(iris)
# Customized Plots
plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000", # hex code for yellow (datalab.cc)
     pch = 19, # solid circles
     main = "Iris: Petal Length vs. Petal Width", # title
     xlab = "Petal Length",
     ylab = "Petal Width")

plot(cos, 0, 2*pi)
plot(exp, 1, 10)
plot(dnorm, -3, +3,
     col = "#cc0000",
     lwd = 5,
     main = "Standard Normal Distribution",
     xlab = "z-scores",
     ylab = "Density")
