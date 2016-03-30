Longest_path_sequence<-function(input){
  n = nchar(input)
  Matrix<-matrix(list(), nrow=n, ncol=n)
   for (i in 1:n)
      Matrix[i,i] = substr(input, i, i);
   N1=n+1
 
    for (k in 3:N1)
    {
      N=n-k+2
        for (i in 1:N)
        {
            j = i+k-2;
            if (substr(input,i,i) == substr(input,j,j) && k == 3)
            {
               Matrix[i,j] <- paste(substr(input, i, i));
            }
            else if (substr(input,i,i) == substr(input,j,j))
            {
               Matrix[i,j] =  paste(substr(input, i, i),Matrix[i+1,j-1],sep="");
            }
            else
            {
	       if(nchar(Matrix[i,j-1]) > nchar(Matrix[i+1,j]))
               Matrix[i,j] = Matrix[i,j-1]
               else
               Matrix[i,j] = Matrix[i+1,j]
               
            }
        }
    }
    return (Matrix[1,n]);
}


Input1<- readline(prompt="Please enter the first string:")
Input2<- readline(prompt="Please enter the second string:")
Input<-paste(Input1,Input2,sep = "")
print(Longest_path_sequence(Input))
