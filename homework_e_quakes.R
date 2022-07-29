#e_quakes = read.csv('path/airquality.csv', head = TRUE, sep = ",")

e_quakes<-datasets::quakes

### Top 10 rows and last 10 rows
head(quakes,10)
tail(quakes,10)

###columns
quakes[,c(2,3)]
quakes[50:80, c(2,3)]

df<-quakes[,-6]

###summary
summary(quakes[,4])
summary(quakes$lat)
quakes$long
quakes$depth
quakes$stations
summary(quakes$long)
summary(quakes$lat)

####summary of the data#####
summary(quakes)
summary(quakes$long)

####visualisation####
plot(quakes$depth)
plot(quakes$long, quakes$depth, type = "p")
plot(quakes$long, quakes$depth, type = "l")
plot(quakes)

# points and lines
plot(quakes$stations,main = 'overview', xlab = 'index', ylab = 'station value', col='blue', type = 'p')
plot(quakes$stations,main = 'overview', xlab = 'index', ylab = 'station value', col='blue', type = 'l')

# Horizontal bar plot
barplot(quakes$lat)
barplot(quakes$lat, main = 'overview',xlab = 'index', ylab ='quakes', horiz = T, axes = T )
barplot(quakes$lat, main = 'overview',xlab = 'index', ylab ='quakes', horiz = F, axes = T )
barplot(quakes$lat, main = 'overview',xlab = 'index', ylab ='quakes', horiz = F, axes = T)

##histogram
hist(quakes$lat)
hist(quakes$long, main = 'overview', xlab = 'index',col = 'blue')

#single box plot
boxplot(quakes$depth)
boxplot.stats(quakes$depth)$out

#multiple box plots
boxplot(quakes[,1:4], main="multiple boxplot")

#mar-margin of the grid
#mfrow- no of rows and columns
#las= 0 for horizontal & 1 for vertical, labels position
#bty= boarder around the box

par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty="o")
plot(quakes$stations,main = 'overview', xlab = 'index', ylab = 'station value', col='blue', type = 'p')
plot(quakes$stations,main = 'overview', xlab = 'index', ylab = 'station value', col='blue', type = 'l')
barplot(quakes$lat)
barplot(quakes$lat, main = 'overview',xlab = 'index', ylab ='quakes', horiz = T, axes = T )
barplot(quakes$lat, main = 'overview',xlab = 'index', ylab ='quakes', horiz = F, axes = T )
barplot(quakes$lat, main = 'overview',xlab = 'index', ylab ='quakes', horiz = F, axes = T)
hist(quakes$lat)
hist(quakes$long, main = 'overview', xlab = 'index',col = 'blue')
boxplot(quakes$depth)
boxplot.stats(quakes$depth)$out

###variance
var(quakes$long, na.rm = T)
var(quakes$depth, na.rm = T)
var(quakes$mag, na.rm = T)
var(quakes$stations, na.rm = T)

###skewness
install.packages("moments")
library(moments)
skewness(quakes)

###Kurtosis
kurtosis(quakes)

###Density Plot
d<-density(quakes$lat)
plot(d)
plot(d, main='lakes latitude')
polygon(d, col='red', border = 'blue')
plot(density(quakes$long))
