# Create the data frame.
emp.data <- data.frame(
   emp_id = c (1:5), 
   emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
   salary = c(623.3,515.2,611.0,729.0,843.25), 
   
   start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
      "2015-03-27")),
   stringsAsFactors = FALSE																	#this is important otherwise we will face difficulty will adding/updating row character type attributes 
)

# Add the "dept" coulmn.
emp.data$dept <- c("IT","Operations","IT","HR","Finance")   								#To add Column/new attribute(Method1)
emp.data<-cbind(emp.data,State=c("A","B","C","D","E"),stringsAsFactors=FALSE) 				#To add column/new attribute(Method2)
emp.data[6,]=c(6,"Karan",800,"2017-12-30","CSE","F")										#To add new row(method1) or use rbind() i.e emp.data<-rbind(emp.data,c(6,"Karan",800,"2017-12-30","CSE","F"))
v <- emp.data
print(v)

#to modify: emp.data[1,"State"]="Haryana"
#to delete: emp.data[-4,]<-NULL