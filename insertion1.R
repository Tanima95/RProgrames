a<-c(45,10,3,4)
print(a)
insert<-function(a)
{
  
  for(i in 2:length(a))
  {
    d<-i
    
    while(a[d]<a[d-1])
    {
      if(d>1)
      {
  
        t   <- a[d-1]
        a[d-1]   <-a[d]
        a[d]<-  t
            
        d<-d-1
      }  
      
        
    }
    
   }
  return(a)
}