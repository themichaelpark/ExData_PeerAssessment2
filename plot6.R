library(ggplot2) 
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", "fnei.zip")
unzip("fnei.zip")
NEI <- readRDS("summarySCC_PM25.rds")
png("plot6.png")
ggplot(subset(NEI,type == "ON-ROAD" & fips %in% c("24510", "06037")), aes(year, Emissions, group=fips, colour=fips)) + 
        geom_line(stat = "summary", fun.y = "sum")
dev.off()