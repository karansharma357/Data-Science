library(tidyr)
country_data<-read.csv("Data.csv")
names(country_data)[names(country_data)=="ï..Country"]<-"country"
gather(country_data,
       key = "Key",
       value = "Value")

convert("Data.csv","Data.tsv")

export