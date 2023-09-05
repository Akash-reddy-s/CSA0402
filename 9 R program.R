num<-as.integer(readline(prompt="Enter any nu3mber"))
for(i in 1:100)
{
  if(num%%i==0){
    print(i)
  }
}