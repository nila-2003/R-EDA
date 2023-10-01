library(datasets)

# LOAD DATA ################################################

?iris
head(iris)


hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)


# Put graphs in 3 rows and 1 column
par(mfrow = c(3,1))

# Histograms for each species using options
hist(iris$Petal.Length [iris$Species == "setosa"],
     xlim = c(0,3),
     breaks = 9,
     main = "Petal width for Setosa",
     xlab = "",
     col = "red")

hist(iris$Petal.Width [iris$Species == "versicolor"],
  xlim = c(0, 3),
  breaks = 9,
  main = "Petal Width for Versicolor",
  xlab = "",
  col = "purple")

hist(iris$Petal.Width [iris$Species == "virginica"],
  xlim = c(0, 3),
  breaks = 9,
  main = "Petal Width for Virginica",
  xlab = "",
  col = "blue")

# Restore graphic parameter
par(mfrow=c(1, 1))


# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  

# Clear console
cat("\014")  # ctrl+L

