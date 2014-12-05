x<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
x<- x[as.Date(x[,1],format="%d/%m/%Y")=="2007-02-01"|as.Date(x[,1],format="%d/%m/%Y")=="2007-02-02",]
y3<-as.numeric(as.character(x[,3]))
png("plot1.png", width=480, height=480)
hist(y3,col="red", main= "Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()

