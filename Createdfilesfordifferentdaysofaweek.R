#importing dataset
dataset = read.csv('Market_Basket_Optimisation.csv', header = FALSE)

#Write csv for sunday
write.csv(dataset, file = "Sunday.csv")


# Write CSV for Saturday
library(caTools)
set.seed(1234)
split=sample.split(dataset,SplitRatio = 4/5)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)



write.csv(training_set, file = "Saturday.csv")


#importing dataset
dataset = read.csv('Market_Basket_Optimisation.csv', header = FALSE)


# Write CSV for Thursday
library(caTools)
set.seed(1234)
split=sample.split(dataset,SplitRatio = 0.60)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)



write.csv(training_set, file = "Thursday.csv")

# Write CSV for Tuesday
#importing dataset
dataset = read.csv('Market_Basket_Optimisation.csv', header = FALSE)

library(caTools)
set.seed(1234)
split=sample.split(dataset,SplitRatio = 0.30)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)



write.csv(training_set, file = "Tuesday.csv")


# Write CSV for Wednesday
#importing dataset
dataset = read.csv('Market_Basket_Optimisation.csv', header = FALSE)

library(caTools)
set.seed(1234)
split=sample.split(dataset,SplitRatio = 0.45)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)


write.csv(training_set, file = "Wednesday.csv")


# Write CSV for Friday
#importing dataset
dataset = read.csv('Market_Basket_Optimisation.csv', header = FALSE)

library(caTools)
set.seed(1234)
split=sample.split(dataset,SplitRatio = 0.70)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)


write.csv(training_set, file = "Friday.csv")


# Write CSV for Monday
#importing dataset
dataset = read.csv('Market_Basket_Optimisation.csv', header = FALSE)

library(caTools)
set.seed(1234)
split=sample.split(dataset,SplitRatio = 0.35)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)



# Write CSV in R
write.csv(training_set, file = "Monday.csv")
