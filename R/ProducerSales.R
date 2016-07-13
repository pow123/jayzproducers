f1 <- list(
       family = "Arial, sans-serif",
       size = 25,
       color = "white"
)
f2 <- list(
       family = "Old Standard TT, serif",
       size = 24,
       color = "white"
  
)
a <- list(
       title = "SALES PER SONG",
       titlefont = f1,
       showgrid = FALSE,
       showticklabels = TRUE,
       showline=TRUE,
       tickangle = 45,
       tickfont = f2
  )

genresales<-plot_ly(samplebygenre, type="bar", name="Hip Hop and R&B" x=album, y=hiphop_r.b, color="blue") %>%
  add_trace(samplebygenre, type="bar", name="Rock" x=album, y=rock, color="red")

salesplot <-plot_ly(producersales, type="scatter", x=Producer, y=SalesPerSong, color=SongRange, colors=cols, mode="markers", size=SalesPerSong) %>% 
  layout(xaxis = a, yaxis = a) %>% 
  layout(plot_bgcolor='rgba(0, 0, 0, 0)') %>% 
  layout(paper_bgcolor='transparent')
plotly_POST(salesplot, filename = "r-docs/jay-plot1")
