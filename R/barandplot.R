library(ggplot2)
library(plotly)
library(devtools)
library(RColorBrewer)
library(gridExtra)
library(dplyr)
library(tidyr)

producersales <- read.csv("T:/Data and GIS/Visualizations/producersales.csv")
producersales$SongRange <- factor(producersales$SongRange, levels=c("2 songs", "3-4 songs", "5-7 songs", "8-10 songs","11 songs", "20+ songs"))


x <- ggplot(producersales, aes(y= reorder(Producer.1, TotalSales), x=TotalSales)) + geom_point(stat="identity") + geom_point(shape=4) + facet_wrap( ~ SongRange, ncol=2, scales="free")
y <- ggplot(producersales, aes(x=reorder(Producer.1, SalesPerSong), y=SalesPerSong, fill=SongRange)) + geom_bar(stat="identity", colour="black") + 
      scale_fill_brewer() + coord_flip()
grid.arrange(x, y, ncol=2)
