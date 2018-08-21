# Data Preprocessing

# Importing the dataset
dataset = read.csv('Data.csv')

# Taking care of missing data by mean
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                        dataset$Salary)


# Importing the dataset again to do the same with median
dataset = read.csv('Data.csv')
 

# Taking care of missing data by median
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) median(x, na.rm = TRUE)),
                     dataset$Age)

dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) median(x, na.rm = TRUE)),
                        dataset$Salary)


# Importing the dataset again to do the same with most_frequent
dataset = read.csv('Data.csv')


dataset$Age[1]=27
# Taking care of missing data by mode
# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}  
result1 <- getmode(dataset$Age)
result2 <- getmode(dataset$Salary)

#Applied the function on Age and Salary
dataset$Age = ifelse(is.na(dataset$Age),
                     result1,dataset$Age)


dataset$Salary = ifelse(is.na(dataset$Salary),
                     result2,dataset$Salary)
