n<- readline(prompt="Please enter the number of the level you want in pyramind: ")
n <- as.integer(n)
for(i in n:1)
{
  e<-n-i
  if(e>0)
  {
  for(j in e:1)
    cat(paste(''," "))
  }
  l<-2*i-1
  for (k in l:1)
  {
    cat(paste('*'," "))
  }
  print('')
}