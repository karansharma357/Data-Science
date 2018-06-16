library(ggplot2)
str(mtcars)
class(mtcars)
names(mtcars)
head(mtcars)
summary(mtcars)
mtcars$

#Since mode is not a built-in R function, we calculate it for each.
  
mode_mpg <- names(sort(-table(mtcars$mpg)))[1]
mode_cyl <- names(sort(-table(mtcars$cyl)))[1]
mode_disp <- names(sort(-table(mtcars$disp)))[1]
mode_hp <- names(sort(-table(mtcars$hp)))[1]
mode_drat <- names(sort(-table(mtcars$drat)))[1]
mode_wt <- names(sort(-table(mtcars$wt)))[1]
mode_qsec <- names(sort(-table(mtcars$qsec)))[1]
mode_vs <- names(sort(-table(mtcars$vs)))[1]
mode_am <- names(sort(-table(mtcars$am)))[1]
mode_gear <- names(sort(-table(mtcars$gear)))[1]
mode_carb <- names(sort(-table(mtcars$carb)))[1]

#mpg = miles per gallon
ggplot(mtcars, aes(cyl)) +
  geom_histogram(binwidth=1) + xlab('Cylinders') + ylab('Number of Cars') +
  ggtitle('Distribution of Cars by Cylinders')


ggplot(mtcars, aes(mtcars$mpg)) +
  geom_histogram(binwidth=1) + xlab('Cylinders') + ylab('Number of Cars') +
  ggtitle('Distribution of Cars by Cylinders')
write.csv(str(mtcars),file="mtcars.csv")
dataset<-read.csv(file='mtcars.csv')



ggplot(mtcars, aes(cyl)) +
  geom_histogram(binwidth=1) + xlab('Cylinders') + ylab('Number of Cars') +
   ggtitle('Distribution of Cars by Cylinders')
   
   
ggplot(mtcars, aes(hp)) +
  geom_histogram(binwidth=20) + xlab('horsepower') + ylab('Number of Cars') +
  ggtitle('Distribution of Cars by Horsepower')

#for corelation between variables
cor(mtcars$mpg, mtcars$hp)


ggplot(mtcars, aes(hp, mpg)) + geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  ylab("Miles per Gallon") +
  xlab("No. of Horsepower") +
  ggtitle("Impact of Number of Horsepower on MPG")

  
  
ggplot(mtcars, aes(hp, mpg)) +
  stat_smooth() + geom_point() +
  ylab("Miles per Gallon") +
  xlab ("No. of Horsepower") +
  ggtitle("Impact of Number of Horsepower on MPG")

  
  
#apply smoothing since mpg unlikely to hit zero
ggplot(mtcars, aes(hp, mpg)) +
  stat_smooth() + geom_point() +
  ylab("Miles per Gallon") +
  xlab ("No. of Horsepower") +
  ggtitle("Impact of Number of Horsepower on MPG")
  
  
  
cor(mtcars$mpg, mtcars$cyl)
# This gives an even stronger negative correlation of -0.85
 
 
qplot(cyl, mpg, data = mtcars, colour = cyl, geom = "point",     
  ylab = "Miles per Gallon", xlab = "No. of Cylinders",
  main = "Impact of Number of Cylinders on MPG")     

  
  
ggplot(mtcars, aes(cyl, mpg)) + geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  ylab("Miles per Gallon") + xlab("No. of Cylinders") +
  ggtitle("Impact of Number of Cylinders on MPG")
  

  
  
