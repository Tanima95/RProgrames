prime<-function(n)
{
print(1)
  for(i in 2:n)
  {
    ct<-0
    j<-i
    for(j in 1:n){
    if(i%%j==0)
    {
      ct<-ct+1
      j<-j+1
    }
    }
    if(ct==2)
      print(i)
    
  }
}

