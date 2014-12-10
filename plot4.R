library(ggplot2) 
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", "fnei.zip")
unzip("fnei.zip")
SCC <- readRDS("Source_Classification_Code.rds")
NEI <- readRDS("summarySCC_PM25.rds")
ref <- SCC[grepl("Coal",SCC$EI.Sector),1]
png("plot4.png")
qplot(x = year, y = Emissions, data = subset(NEI,SCC %in% ref), stat = "summary", fun.y = "sum", geom = "line")
dev.off()