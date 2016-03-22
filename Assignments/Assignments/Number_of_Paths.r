Number_of_Paths<-function(m,n){
if((m == 1) || (n == 1))
        return (1);
 
return  (Number_of_Paths(m-1, n) + Number_of_Paths(m, n-1));
}
Input<- readline(prompt="Please enter the two number which are separated by space")
Input <- as.numeric(strsplit(as.character(Input)," ")[[1]])
print(Number_of_Paths(Input[1],Input[2]))