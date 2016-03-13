x<- readline(prompt="Please enter x values")
x<-as.integer(x)
y<- readline(prompt="Please enter y values")
y<-as.integer(y)
z<- readline(prompt="Please enter z values")
z<-as.integer(z)
l<-(x^y)%%z
print(l)