dataset <- calories_consumed

summary(dataset)
is.na(dataset)
colnames(dataset)
# "Weight.gained..grams." "Calories.Consumed" 

#Linear Regression Modelling
model_fit <- lm(Weight.gained..grams.~Calories.Consumed,data = dataset)
summary(model_fit)
## R^2 = 0.8968 Adj R^2 = 0.8882

plot(model_fit)

library(MASS)
stepAIC(model_fit)

library(car)

residualPlot(model_fit)
avPlots(model_fit)
qqPlot(model_fit)

influenceIndexPlot(model_fit)

dataset1 <- dataset[-7,]
model_fit1 <- lm(Weight.gained..grams.~Calories.Consumed,data = dataset1)
summary(model_fit1)
## Afer Removing row 7, R^2 = 0.917 Adj R^2 = 0.9094
residualPlot(model_fit1)
avPlots(model_fit1)
qqPlot(model_fit1)
influenceIndexPlot(model_fit1)

dataset2 <- dataset[-c(1,7),]
model_fit2 <- lm(Weight.gained..grams.~Calories.Consumed,data = dataset2)
summary(model_fit2)
## Afer Removing row 1,7, R^2 = 0.9309 Adj R^2 = 0.924
residualPlot(model_fit2)
avPlots(model_fit2)
qqPlot(model_fit2)
influenceIndexPlot(model_fit2)

dataset3 <- dataset[-c(1,6,7),]
model_fit3 <- lm(Weight.gained..grams.~Calories.Consumed,data = dataset3)
summary(model_fit3)
## Afer Removing row 1,6,7, R^2 = 0.9442 Adj R^2 = 0.938
residualPlot(model_fit3)
avPlots(model_fit3)
qqPlot(model_fit3)
influenceIndexPlot(model_fit3)

dataset4 <- dataset[-c(1,6,7,11),]
model_fit4 <- lm(Weight.gained..grams.~Calories.Consumed,data = dataset4)
summary(model_fit4)
## Afer Removing row 1,6,7,11  R^2 = 0.9577 Adj R^2 = 0.9524
residualPlot(model_fit4)
avPlots(model_fit4)
qqPlot(model_fit4)
influenceIndexPlot(model_fit4)

dataset5 <- dataset[-c(1,6,7,11,12),]
model_fit5 <- lm(Weight.gained..grams.~Calories.Consumed,data = dataset5)
summary(model_fit5)
## Afer Removing row 1,6,7,11,12  R^2 = 0.9662 Adj R^2 = 0.9614
residualPlot(model_fit5)
avPlots(model_fit5)
qqPlot(model_fit5)
influenceIndexPlot(model_fit5)

## Further Removing data points R^2 is decreasing, so final model R^2 is 0.9662


