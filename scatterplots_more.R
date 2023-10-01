library(datasets)

?mtcars
head(mtcars)

# univariate variables
hist(mtcars$wt)
hist(mtcars$mpg)

plot(mtcars$wt, mtcars$mpg)

plot(mtcars$wt, mtcars$mpg,
     pch = 19,  # solid circle
     cex = 1.5,  # size
     col = "red",
     main = "MPG as a function of weight of cars",
     xlab = "Weight (in 1000 pounds)",
     ylab = "MPG")

detach("package:datasets",unload = TRUE)
dev.off()
cat("\014")
