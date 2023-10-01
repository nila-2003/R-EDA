(x1 <- 1:3)
(y  <- 1:9)

(df1 <- cbind.data.frame(x1, y))
typeof(df1$x1)
str(df1)

(x2  <- as.factor(c(1:3)))
(df2 <- cbind.data.frame(x2, y))
typeof(df2$x2)
str(df2)

x3  <- c(1:3)
df3 <- cbind.data.frame(x3, y)
(df3$x3 <- factor(df3$x3,
  levels = c(1, 2, 3)))
typeof(df3$x3)
str(df3)

x4  <- c(1:3)
df4 <- cbind.data.frame(x4, y)
df4$x4 <- factor(df4$x4,
  levels = c(1, 2, 3),
  labels = c("macOS", "Windows", "Linux"))
df4
typeof(df4$x4)
str(df4)

x5  <- c(1:3)
df5 <- cbind.data.frame(x5, y)
(df5$x5 <- ordered(df5$x5,
  levels = c(3, 1, 2),
  labels = c("No", "Maybe", "Yes")))
df5
typeof(df5$x5)
str(df5)
rm(list = ls()) 
cat("\014")
