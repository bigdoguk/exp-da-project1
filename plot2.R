x<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
x<- x[as.Date(x[,1],format="%d/%m/%Y")=="2007-02-01"|as.Date(x[,1],format="%d/%m/%Y")=="2007-02-02",]
z<-paste(x[,1],x[,2])
z<-strptime(z,"%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(z,as.numeric(as.character(x[,3])),type="n",xlab="",ylab="Global Active Power (kilowatts)")
lines(z,as.numeric(as.character(x[,3])))
dev.off()