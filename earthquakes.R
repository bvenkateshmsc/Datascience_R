library(datasets)
data("quakes")

e_quakes = datasets::quakes

head(quakes)
tail(quakes)

e_quakes

summary(e_quakes$depth)
summary(e_quakes)

dataset = e_quakes[,3:5]

dataset

colnames(dataset)

#points and lines

plot(dataset)

plot(dataset$depth,dataset$mag)

plot(dataset$mag,type = 'b')

plot(dataset$mag, xlab = "Depth",ylab = "Magnitude Level", main = "Earthquake Magnitude Level",col = "green",type = 'b')

barplot(dataset$mag, xlab = "Depth",ylab = "Magnitude Level", main = "Earthquake Magnitude Level",type = 'b',horiz = F)

barplot(dataset$mag , xlab = 'Depth',
        ylab = 'Magnitude Level', main = 'Earthquake Magnitude Leve',
        col = 'blue',horiz = F)

barplot(dataset$mag , xlab = 'Depth',
        ylab = 'Magnitude Level', main = 'Earthquake Magnitude Leve',
        col = 'blue',horiz = T)

#histogram

hist(dataset$mag)
hist(dataset$mag,main = "Magnitude Level",xlab = "magnitude", col = 'green')

#boxplot

boxplot(dataset$mag)

boxplot(dataset,main = 'multiple')


par(mfrow = c(3,3),mar=c(2,5,2,1),las=1,bty = 'n')
plot(dataset$mag)
plot(dataset$depth,dataset$mag)
plot(dataset$depth,type = 'l')
plot(dataset$mag,type = 'l')
plot(dataset$stations,type = 'l')

barplot(dataset$mag , xlab = 'Depth',
        ylab = 'Magnitude Level', main = 'Earthquake Magnitude Leve',
        col = 'blue',horiz = T)

hist(dataset$mag)

boxplot(dataset$mag)

boxplot(dataset,main = 'multiple box plots')









