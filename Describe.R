library(datasets)  
if (!require("pacman")) install.packages("pacman")

pacman::p_load(pacman, psych) 
head(iris)

p_help(psych)           
p_help(psych, web = F)  

# For quantitative variables only.

describe(iris$Sepal.Length)  # One quantitative variable
describe(iris)               # Entire data frame
rm(list = ls()) 

p_unload(all)  
detach("package:datasets", unload = TRUE)   # For base

cat("\014")  # ctrl+L

