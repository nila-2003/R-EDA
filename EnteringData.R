x1 <- 0:10
x1

x2 <- 10:0
x2

(x3 <- seq(10))

(x4 <- seq(30, 0, by = -3))

?c 

x5 <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8)
x5

?scan 

x6 <- scan()  # After running this command, go to console
# Hit return after each number
# Hit return twice to stop
x6


?rep  
x7 <- rep(TRUE, 5)
x7

x8 <- rep(c(TRUE, FALSE), 5)
x8

x9 <- rep(c(TRUE, FALSE), each = 5)
x9
rm(list = ls()) 

