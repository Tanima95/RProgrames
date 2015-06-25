library(RJDBC)
drv<-JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver" , "/home/tne/sqljdbc4-2.0.jar" ,identifier.quote="`")
conn <- dbConnect(drv, "jdbc:sqlserver://192.168.0.11\\TECHNOID;databaseName=PTS", "sa", "Design_20")
countries<- dbGetQuery(conn, "select * from Countries")
tourists<- dbGetQuery(conn, "select * from Tourists")
permit1 <- dbGetQuery(conn, "select * from InLinePermitApplications")
tourcount<-dbGetQuery(conn,"select c.Name ,count(ts.countryId) COUNT from Tourists ts INNER JOIN Countries c ON ts.CountryId=c.ID group by c.Name")



a<-as.Date(y1$PermitDateFrom,"%Y-%m-%d")
t1<-format(a, "%Y-%m")
z<-data.frame(table(t1))
head<-c("DATE","COUNT")
names(z)<-head

#time1<-df[order(as.Date(y1$PermitDateFrom,format="%b-%Y")),,drop=FALSE]



pl<-plot(z$COUNT,type="o",col="blue",xlab="date",ylab="count")
#l<-legend("topright",legend=z$DATE,fill="blue",cex=.5)
axis(1,at=1:11, lab=z$DATE)
