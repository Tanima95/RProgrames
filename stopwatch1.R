stopwatch<-function(print=TRUE)
{
  startf<-Sys.time()
start1<-Sys.time()
  sorted<-c(seq(1:10))
  y1<-sel1(sorted)
  stop1<-Sys.time()
    di1<-stop1-start1
  print(di1)
 
  start2<-Sys.time()
  random<-c(sample(1:10,10,replace=T))
  y2<-sel1(random)
 stop2<-Sys.time()
 di2<-stop2-start2
 print(di2)
 
 start3<-Sys.time()
  reverse<-c(rev(1:10))
  y3<-sel1(reverse)
  stop3<-Sys.time()
di3<-stop3-start3
print(di3)

 start4<-Sys.time()
   empty<-c(0)
  y4<-sel1(empty)
 stop4<-Sys.time()
 di4<-stop4-start4
 print(di4)
 nam<-c("sorted","random","reverse","empty") 
 numb<-c(y1,y2,y3,y4)
 timer<-c(di1,di2,di3,di4) 
  a<-data.frame(timer,nam)
 print(numb)
 stopf<-Sys.time()
 ti<-stopf-startf

 
tak<-c(a$nam,a$timer)
print(tak)
plotter<-barplot(tak,xlab="number list",ylab="Time Taken",main="no./time",col=c(rainbow(length(a))))

print(plotter) 

  }
