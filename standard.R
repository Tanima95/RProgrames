standard<-function(a)
{
  len<-length(a)
 
  c<-sum(a)/len
  diff<-sum((a-c)^2)
  
 m<-diff/len-1
 sqroot<-sqrt(m)
  return(sqroot)
}
