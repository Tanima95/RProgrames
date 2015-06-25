library(RJDBC)
drv<-JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver" , "/home/tne/sqljdbc4-2.0.jar" ,identifier.quote="`")
conn <- dbConnect(drv, "jdbc:sqlserver://192.168.0.11\\TECHNOID;databaseName=PTS", "sa", "Design_20")
countries<- dbGetQuery(conn, "select * from Countries")
tourists<- dbGetQuery(conn, "select * from Tourists")
permit1 <- dbGetQuery(conn, "select * from InLinePermitApplications")
tourcount<-dbGetQuery(conn,"select c.Name ,count(ts.countryId) COUNT from Tourists ts INNER JOIN Countries c ON ts.CountryId=c.ID group by c.Name")

barplot(tourcount$COUNT,xlab="countries",ylab="count",col=rainbow(20),names.arg=tourcount$Name)
l<-legend("topright",legend=c(tourcount$Name),cex=0.5,fill=rainbow(20))

