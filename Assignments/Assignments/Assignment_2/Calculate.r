Calculate <- function(ip1,ip2,op) {
  if (op == "+")
  {
    sprintf("%f + %f = %f",ip1,ip2,ip1+ip2)
  } 
  else if (op == "-") 
  {
    sprintf("%f - %f = %f",ip1,ip2,ip1-ip2)
  }
  else if (op == "*")
  {
    sprintf("%f * %f = %f",ip1,ip2,ip1*ip2)
  }
  else if (op == "/") 
    {
    sprintf("%f / %f = %f",ip1,ip2,ip1/ip2)
  }
  else if (op == "log") {
    sprintf("log(%f) base=%f is %f",ip1,ip2,log(ip1,ip2))
  }
}
Input<- readline(prompt="Please enter the two number which are separated by space ")
Op<- readline(prompt = "Please enter the operation ")
Input <- as.numeric(strsplit(as.character(Input)," ")[[1]])
print(Calculate(Input[1],Input[2],Op))



