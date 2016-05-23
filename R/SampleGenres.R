library(ggplot2)
library(plotly)
library(devtools)
library(reshape2)
library(RColorBrewer)

genres <- ggplot(data.genres, aes(album, value)) +
  geom_bar(aes(fill=variable), stat="identity", position="dodge") +
  xlab("Album") + ylab("Number of Samples") +
  theme(axis.text.x = element_text(angle = 90))  

ggplotly(genres)

plotly_POST(genres, filename = "r-docs/jay-plot2")