#install.packages('ggmap')

#data
data<- read.table("newdata.txt",header=T)
#str(data)
#attach(data)

#NameOfFile <- readline(prompt="Enter filename: ")

# loading the required packages
library(ggplot2)
library(ggmap)

#a <- readline(prompt="Enter desired data: ")

# getting the map
mapgilbert <- get_map(location = c(-10, 25, 48, 42), zoom = 4,
                      maptype = "satellite", scale = 2, filename = "Na14.pdf")
# plotting the map with some points on it
ggmap(mapgilbert,  extent = "device", legend = "right") + ggtitle("Mediterranean")+
  geom_point(data = data, aes(x = data[,1], y = data[,2], colour = data[,3]), size = 3) + scale_colour_gradient(low = "yellow", high = "red")
