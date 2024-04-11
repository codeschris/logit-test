# Installing dependency for reading excel files (run once)
# install.packages('readxl')
# install.packages('glm2')
library(readxl)
library(glm2)

# Reading and performing logistic regression
data1 <- read_excel('./binary.xls')
log_model <- glm(admit ~ gre + gpa + rank, data = data1, family = binomial)

# Summary of the logistic model
summary(log_model)
