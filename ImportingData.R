library(datasets)  

if (!require("pacman")) install.packages("pacman")

pacman::p_load(pacman, rio) 

browseURL("http://j.mp/2aFZUrJ")

rio_csv <- import("D:/R/ImportingData_Datasets/mbb.csv")
head(rio_csv)

rio_txt <- import("D:/R/ImportingData_Datasets/mbb.txt")
head(rio_txt)

rio_xlsx <- import("D:/R/ImportingData_Datasets/mbb.xlsx")
head(rio_xlsx)

?View
View(rio_csv)


r_txt1 <- read.table("D:/R/ImportingData_Datasets/mbb.txt", header = TRUE)

r_txt2 <- read.table("D:/R/ImportingData_Datasets/mbb.txt", 
  header = TRUE, 
  sep = "\t")

trends.csv <- read.csv("D:/R/ImportingData_Datasets/mbb.csv", header = TRUE)

rm(list = ls()) 
p_unload(all)

cat("\014")
