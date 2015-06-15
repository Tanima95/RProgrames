a<-sample(1:10000,10000,replace=T)
selection<-function(a)
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
  return(a)
}