#Case Study for Insurance Claim


# Importing the dataset
dataset = read.csv('Insuranceclaims.csv')
dataset=dataset[2:6]

#TO check number of claims and no_claims
summary(dataset)

#Encoding all variables as factor
dataset$gender = factor(dataset$gender, levels = c('male', 'female'))

dataset$bmi = factor(dataset$bmi, levels = c('under_weight','normal_weight','over_weight','obese'))

dataset$age_bracket = factor(dataset$age_bracket, levels = c('18-30','31-50','50+'),
                             labels = c(1,2,3))

dataset$previous_claim = factor(dataset$previous_claim, levels = c(0,1))

dataset$claim = factor(dataset$claim, levels = c('claim', 'no_claim'))

# Splitting the dataset into the Training set and Test set
library(caTools)
set.seed(1234)
split=sample.split(dataset,SplitRatio = 4/5)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#No feature Scaling is done because every variable is a factor

# Fitting Random Forest Classification to the Training set
library(randomForest)
set.seed(1234)
classifier = randomForest(x = training_set[-5],
                          y = training_set$claim,
                          ntree = 1095)

# Predicting the Training set results
y_pred1 = predict(classifier, newdata = training_set[-5])

# Predicting the Test set results
y_pred2 = predict(classifier, newdata = test_set[-5])

# Making the Confusion Matrix for Training set results
cm1 = table(training_set[, 5], y_pred1)

# Making the Confusion Matrix for Test set results
cm2 = table(test_set[, 5], y_pred2)

#checking accuracy of Training set
Accuracy1=(cm1[1,1]+cm1[2,2])/800

#checking accuracy of Test set
Accuracy2=(cm2[1,1]+cm2[2,2])/200
