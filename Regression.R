library(datasets) 
if (!require("pacman")) install.packages("pacman")

pacman::p_load(pacman, caret, lars, tidyverse)

?USJudgeRatings
head(USJudgeRatings)
data <- USJudgeRatings

x <- as.matrix(data[, -12])
y <- data[, 12]

reg1 <- lm(y ~ x)

reg1 <- lm(RTEN ~ CONT + INTG + DMNR + DILG + CFMG +
           DECI + PREP + FAMI + ORAL + WRIT + PHYS,
           data = USJudgeRatings)

reg1 
summary(reg1)

anova(reg1)            # Coefficients w/inferential tests
coef(reg1)             # Coefficients (same as reg1)
confint(reg1)          # CI for coefficients
resid(reg1)            # Residuals case-by-case
hist(residuals(reg1))  # Histogram of residuals

stepwise <- lars(x, y, type = "stepwise")

forward <- lars(x, y, type = "forward.stagewise")

# LAR: Least Angle Regression
lar <- lars(x, y, type = "lar")

# LASSO: Least Absolute Shrinkage and Selection Operator
lasso <- lars(x, y, type = "lasso")

r2comp <- c(stepwise$R2[6], forward$R2[6], 
            lar$R2[6], lasso$R2[6]) %>% 
            round(2)
names(r2comp) <- c("stepwise", "forward", "lar", "lasso") 
r2comp 

rm(list = ls()) 
p_unload(all)
detach("package:datasets", unload = TRUE) 

dev.off()

cat("\014")
