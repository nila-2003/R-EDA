
library(datasets)

# LOAD DATA ################################################

?mtcars
head(mtcars)

# BAR CHARTS ###############################################

barplot(mtcars$cyl)             # Doesn't work

# Need a table with frequencies for each category
  # Create table
cylinders <- table(mtcars$cyl)                # Default X-Y plot (lines)
barplot(cylinders)
plot(cylinders) # line chart

# Clear environment
rm(list = ls()) 

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off() 

# Clear console
cat("\014")  # ctrl+L
