# Library
library(fmsb)
library(RCurl)

# Create data: note in High school for several students

data <- as.data.frame(matrix( c(8,4,4,0,7) , ncol=5))
colnames(data) <- c("R" , "SPSS" , "SQL" , "Python" , "SAS" )

#  max and min 
data <- rbind(rep(10,5) , rep(0,5) , data)

# Color 
colors_border=c( "steelblue1" )
colors_in=c( rgb(0.1,0.2,0.8,0.2) )

# plot 
radarchart( data , axistype=1, seg=5,
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="black", caxislabels=seq(0,10,2), cglwd=1,
            #custom labels
            vlcex=1.5
)

setwd("~/Desktop/CV_latex")

jpeg("radar.jpg", width = 400, height = 400)
radarchart( data , axistype=1, seg=5,
            #custom polygon
            pcol=colors_border , pfcol=colors_in , plwd=4 , plty=1,
            #custom the grid
            cglcol="grey", cglty=1, axislabcol="black", caxislabels=seq(0,10,2), cglwd=1,
            #custom labels
            vlcex=1.5
)
dev.off()