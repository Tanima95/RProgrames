a<-sample(1:100,10,replace=T)
selection<-function(a)
{
for(i in 1:length(a))
  
{
  
  min<-i;
  
  for(j in i:length(a))
    
  {
    
    if(a[min]>a[j])
      
    {
      
      i<-j
      
    }
    
  }
  
  t<-a[i]
  
  a[i]<- a[min]
  
  a[min]<-t
}
  return(a)
}
