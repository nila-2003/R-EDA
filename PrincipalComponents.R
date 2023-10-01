pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
  ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
  stringr, tidyr) 

library(datasets)

head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]  
head(cars)

pc <- prcomp(cars,
        center = TRUE,  # Centers means to 0
        scale = TRUE) 

pc <- prcomp(~ mpg + cyl + disp + hp + wt + qsec + am +
        gear + carb, 
        data = mtcars, 
        center = TRUE,
        scale = TRUE)

summary(pc)

plot(pc)  # Importance

pc

predict(pc) %>% round(2)

biplot(pc)


rm(list = ls())

p_unload(all)
detach("package:datasets", unload = TRUE)  # For base

dev.off()

cat("\014") 

