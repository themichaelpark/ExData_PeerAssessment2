download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", "fnei.zip")
unzip("fnei.zip")
NEI <- readRDS("summarySCC_PM25.rds")
png("plot3.png")
qplot(x=year, y=Emissions, data = subset(NEI, fips == "24510" & (year == 1999 | year == 2008)), 
      stat = "summary", fun.y = "sum", facets = .~type, geom = "line")
dev.off()
    