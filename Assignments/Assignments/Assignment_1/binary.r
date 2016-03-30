n<- readline(prompt="Please enter a +ve number to convert it into binary: ")
n<-as.integer(n)
ans<-c()
tmp<-n
for(i in 1:n){
  ans[i]<-as.integer(tmp%%2)
  tmp<-tmp/2
  if(tmp<=0)
  {
    break
  }
}
print(rev(ans))