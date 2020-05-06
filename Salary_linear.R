dataset <- Salary_Data
head(dataset)

pairs(dataset)
cor(dataset)
colnames(dataset)
# "YearsExperience" "Salary" 

#Linear Regression
model_fit <- lm(Salary~YearsExperience,data = dataset)
summary(model_fit)

#Both Intercept and Years Experience are in excellent significance level
# R^2 = 0.957 , Adj R^2 = 0.9554

library(MASS)
stepAIC(model_fit)

plot(model_fit)

library(car)

residualPlot(model_fit)
avPlots(model_fit)
qqPlot(model_fit)
# 20 and 24

#Deletion Diagnostics
influenceIndexPlot(model_fit)

dataset1 <- dataset[-24,]

model_fit1 <- lm(Salary~YearsExperience,data = dataset1)
summary(model_fit1)
#after removing row 24 R^2 = 0.9597 no affect

residualPlot(model_fit1)
avPlots(model_fit1)
qqPlot(model_fit1)
# 20 and 24

#Deletion Diagnostics
influenceIndexPlot(model_fit1)

dataset2 <- dataset[-c(2,24),]

model_fit2 <- lm(Salary~YearsExperience,data = dataset2)
summary(model_fit2)
#after removing row 2 and 24 R^2 = 0.9616 no affect

residualPlot(model_fit2)
avPlots(model_fit2)
qqPlot(model_fit2)
# 20 and 24

#Deletion Diagnostics
influenceIndexPlot(model_fit2)

dataset3 <- dataset[-c(2,20,24),]

model_fit3 <- lm(Salary~YearsExperience,data = dataset3)
summary(model_fit2)
#after removing row 2 ,20 and 24 R^2 = 0.9616 no affect

residualPlot(model_fit3)
avPlots(model_fit3)
qqPlot(model_fit3)
# 20 and 24

#Deletion Diagnostics
influenceIndexPlot(model_fit3)


summary(model_fit)
summary(model_fit1)
summary(model_fit2)

### Final Accuracy Rate is R^2 = 0.9616