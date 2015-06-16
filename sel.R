
a<-c(sample(1:10,10,replace=T))
sel1<-function(a)
{
  for(i in 1:length(a))
    
  {
    
    min<-i
    k<-i+1
    
    while(k<=length(a))
      
    {
      
      if(a[min]>a[k])
        
      {
        
        min<-k
        
      }
      k<-k+1
    }
    if(min!=i)
    {
    t<-a[i]
    
    a[i]<- a[min]
    
    a[min]<-t
    }
  }
  print(a)
 
  return(a)
}
