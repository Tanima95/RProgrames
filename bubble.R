a<-c(10,80,70,50,60)
bubble<-function()
{
  d<-0
  swap<-0
  for(i in 1:length(a))
  {
    for(d in 1:(length(a)-1))
    {
      if(a[d]>a[d+1])
      {
        swap=a[d]
        a[d]=a[d+1]
        a[d+1]=swap
      }
      }
  }
  return(a)
}
