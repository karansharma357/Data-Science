x <- 10+8i

typeof(x)

print(x)


x<-paste("Hello","World")


X <- 4==4
Y <- 14<=10

Z <- X | Y

i <- 1
while(i<=5){
  print("Hello")
  i <- i+1
}


for (i in 1:5){
  print("HELLO")
}

x <- rnorm(1)

ifelse(x>1, print("Greater than 1"),
       ifelse(x< -1,print("Less than -1"),print("NA"))) 

x<-rnorm(1)
{
if(x>1)
{
  print("number greater than 1")
}
else
{
  print("number less than 1")
}
}      


x<-rnorm(1)

if(x>1)
{ 
  print("number greater than 1")
} else
  {
    print("number less than 1")
  }


a<- c(b,4,d,5)
is.finite(a)

count<-0
for(i in 1:5000000)
{
  x<-rnorm(1)
  if( x < 1 & x > -1)
  {
    count<-count+1
  }
}
eff<-count/5000000
print(eff)
  


