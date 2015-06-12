
library(RJDBC)
drv<-JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver" , "/home/tne/sqljdbc4-2.0.jar" ,identifier.quote="`")
conn <- dbConnect(drv, "jdbc:sqlserver://192.168.0.11\\TECHNOID;databaseName=OBTS", "sa", "Design_20")

bookings<- dbGetQuery(conn, "select * from Bookings")
depot<- dbGetQuery(conn, "select * from Depot")
