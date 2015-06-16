stopwatch<-function(print=TRUE)
{
  startf<-Sys.time()
start1<-Sys.time()
  sorted<-c(seq(1:10))
  y1<-insertionsort(sorted)
  stop1<-Sys.time()
    di1<-stop1-start1
  print(di1)
 
  start2<-Sys.time()
  random<-c(sample(1:10,10,replace=T))
  y2<-insertionsort(random)
 stop2<-Sys.time()
 di2<-stop2-start2
 print(di2)
 
 start3<-Sys.time()
  reverse<-c(rev(1:10))
  y3<-insertionsort(reverse)
  stop3<-Sys.time()
di3<-stop3-start3
print(di3)

 #start4<-Sys.time()
  # empty<-c(0)
 # y4<-insertionsort(empty)
 #stop4<-Sys.time()
 #di4<-stop4-start4
 #print(di4)


start11<-Sys.time()
sorted<-c(seq(1:10))
y11<-sel1(sorted)
stop11<-Sys.time()
di11<-stop11-start11
print(di11)

start22<-Sys.time()
random<-c(sample(1:10,10,replace=T))
y22<-sel1(random)
stop22<-Sys.time()
di22<-stop22-start22
print(di22)

start33<-Sys.time()
reverse<-c(rev(1:10))
y33<-sel1(reverse)
stop33<-Sys.time()
di33<-stop33-start33
print(di33)

#start4<-Sys.time()
# empty<-c(0)
# y4<-insertionsort(empty)
#stop4<-Sys.time()
#di4<-stop4-start4
#print(di4)
nam1<-c("sorted","random","reverse") 
numb1<-c(y11,y22,y33)
timer1<-c(di11,di22,di33) 
a1<-data.frame(timer1,nam1)
#print(numb)
#print(a1)


#tak1<-c(a1$nam,a1$timer)
#print(tak1)
#plotter1<-barplot(tak,xlab="number list",ylab="Time Taken",main="no./time",col=c(rainbow(length(a))))

#print(plotter1) 









 nam<-c("sorted","random","reverse") 
 numb<-c(y1,y2,y3)
 timer<-c(di1,di2,di3) 
  a<-data.frame(timer,nam)
 print(numb)
 print(a)
 stopf<-Sys.time()
 ti<-stopf-startf

 timers<-c(timer,timer1)
 nams<-c(nam,nam1)
 mydata<-data.frame(timers,nams)
tak<-c(mydata$nams,mydata$timers)
print(tak)
plotter<-barplot(tak,xlab="number list",ylab="Time Taken",main="no./time",col=c(rainbow(length(a))))

print(plotter) 

  }
