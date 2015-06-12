hosp<-function(print=TRUE)
{
  hospital<-c("yashoda","apollo","kamineni")
  doctors<-c("dr.sharma","dr.raju","dr.gita")
  treated<-c(10,20,30)
  placebo<-c(20,30,40)
  patients<-c("krishna","punith","devi")
  
  mydata<-data.frame(hospital,doctors,treated,placebo)
  
  
 
 check1<-table(mydata$doctors,mydata$treated)
 print(mydata)

 y<- barplot(check1,xlab="DOCTORS",ylab="TREATMENT",col=c("red", "yellow", "green"),names.arg=c(doctors),legend=rownames(check1),beside=TRUE)
  return(y)
}