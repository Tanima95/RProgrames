library(RJDBC)
drv<-JDBC("com.microsoft.sqlserver.jdbc.SQLServerDriver" , "/home/tne/sqljdbc4-2.0.jar" ,identifier.quote="`")
conn <- dbConnect(drv, "jdbc:sqlserver://192.168.0.11\\TECHNOID;databaseName=PTS", "sa", "Design_20")
# countries<- dbGetQuery(conn, "select * from Countries")
# tourists<- dbGetQuery(conn, "select * from Tourists")
permit1 <- dbGetQuery(conn, "select * from InLinePermitApplications")
tourcount<-dbGetQuery(conn,"select c.Name ,count(ts.countryId) COUNT from Tourists ts INNER JOIN Countries c ON ts.CountryId=c.ID group by c.Name")
ilptour<-dbGetQuery(conn,"select t.ID,t.countryId  from Tourists t INNER JOIN ILPTourists ilp ON t.ID=ilp.TouristID ")
ilpapp<-dbGetQuery(conn,"select app.PermitDateFrom,b.TouristId from InLinePermitApplications app INNER JOIN ILPTourists b ON b.InLinePermitApplicationID=app.ID")
#ip<-data.frame(merge(ilptour,ilpapp,by="TouristId"))
tourname<-dbGetQuery(conn,"select c.Name , ts.ID from Tourists ts INNER JOIN Countries c ON ts.CountryId=c.ID ")

a<-as.Date(ilpapp$PermitDateFrom,"%Y-%m-%d")
t1<-format(a, "%Y-%m")
ct<-table(ilpapp$TouristId,t1)
ct2<-table(ilptour$countryId,t1)

z<-data.frame(ct2)
names(z)<-c("countid","time","freq")
#poisson
model.pois= glm( z$freq ~ z$time, data = z, family = poisson)

summary(model.pois)

1 - pchisq(summary(model.pois)$deviance,
           summary(model.pois)$df.residual
)
#poisson not working,negative binom 
library(MASS)
model.nb = glm.nb( z$freq ~ z$time, data = z)
summary(model.nb)

1 - pchisq(summary(model.nb)$deviance,
           summary(model.nb)$df.residual
)

cbind(z, 
      Mean = predict(model.nb, newdata = z, type = "response"), 
      SE = predict(model.nb, newdata = z, type="response", se.fit = T)$se.fit
)

#negat binom working,predict values
