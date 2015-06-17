
library(RJDBC)
drv<-JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver" , "/home/tne/sqljdbc4-2.0.jar" ,identifier.quote="`")
conn <- dbConnect(drv, "jdbc:sqlserver://192.168.0.11\\TECHNOID;databaseName=PTS", "sa", "Design_20")

countries<- dbGetQuery(conn, "select * from Countries")
tourists<- dbGetQuery(conn, "select id,Firstname,countryid,CreateDateTime from Tourists")
a<-as.Date(tourists$CreateDateTime,"%Y-%m-%d")
z<-data.frame(table(a))
x<-c(z$Var1,z$Freq)
#rna<-rownames(countries$Name)
plot1<-barplot(x,xlab = "Date",ylab="counts",las=2,main="counts v/s dates",axes=TRUE,col=rainbow(20),space=0.2)
l<-legend("topright",legend=c(tourists$CreateDateTime),cex=0.25)