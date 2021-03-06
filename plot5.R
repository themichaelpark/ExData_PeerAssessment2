library(ggplot2) 
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", "fnei.zip")
unzip("fnei.zip")
NEI <- readRDS("summarySCC_PM25.rds") 
png("plot5.png")
qplot(x = year, y = Emissions, data = subset(NEI, type == "ON-ROAD" & fips == "24510"), stat = "summary", fun.y = "sum", geom = "line")
dev.off()