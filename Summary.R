library(datasets)

head(iris)

summary(iris$Species)       # Categorical variable
summary(iris$Sepal.Length)  # Quantitative variable
summary(iris)               # Entire data frame

detach("package:datasets", unload = TRUE)   # For base

cat("\014")  # ctrl+L
