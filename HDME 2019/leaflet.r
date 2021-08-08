
# Leaflet mapping exercise in R
# ESU DH 2018 Humanities Data and Mapping Environments
# adapted from https://trendct.org/2015/06/26/tutorial-how-to-put-dots-on-a-leaflet-map-with-r/

# https://cran.r-project.org/doc/contrib/intro-spatial-rl.pdf
# https://github.com/geocomPP/sdv
# https://github.com/Robinlovelace/Creating-maps-in-R
# https://rstudio.github.io/leaflet/showhide.html


install.packages("leaflet")
library(leaflet)
setwd('/Users/djw12/Documents/')
mydata <- read.csv("BPM4Rv2.csv", stringsAsFactors=FALSE)
m <- leaflet(mydata) %>% addTiles('https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png',
    attribution='Map tiles by <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>,
    <a href="http://creativecommons.org/licenses/by/3.0">CC-BY-SA 3.0</a> &mdash;')
m %>% setView (35.515085, 33.879793, zoom=12)
m %>% addCircles(~lng, ~lat, popup=mydata$business, weight = 3, radius=70,
                 color="#800000", stroke = TRUE, fillOpacity = 0.8)


install.packages("leaflet")
library(leaflet)
setwd('/Users/djw12/Documents/')
mydata <- read.csv("cdep4R3.csv", stringsAsFactors=FALSE)
m <- leaflet(mydata) %>% addTiles('https://server.arcgisonline.com/ArcGIS/rest/services/World_Terrain_Base/MapServer/tile/{z}/{y}/{x}',
                 attribution='Tiles &copy; Esri &mdash; Source: USGS, Esri, TANA, DeLorme, and NPS')
m %>% setView (19.191305, 49.012421, zoom=6)
m %>% addCircles(lng= ~lngtrim, lat = ~lattrim, popup=mydata$medtop, weight = 3, radius=70,
                 color="#800000", stroke = TRUE, fillOpacity = 0.8)


# Set the working directory in R

install.packages("leaflet")
library(leaflet)
setwd('/Users/ABC/Documents/')

mydata <- read.csv("filename.csv", stringsAsFactors=FALSE)

# Brings in the file 'filename.csv'

m <- leaflet(christine) %>% addTiles('https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png',
    	attribution='Map tiles by <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>, <a href="http://creativecommons.org/licenses/by/3.0">CC-BY-SA 3.0</a> &mdash;')

# creates dataframe for leaflet package and adds openly available map tiles,
adding a citation for them
# other map tiles found here http://leaflet-extras.github.io/leaflet-providers/preview/

m %>% setView (35.515085, 33.879793, zoom=12)

# set center point for lnglat (NB: not latlng) for Beirut

m %>% addCircles(~lng, ~lat, popup=mydata$ID, weight = 3, radius=40,
                 color="#800000", stroke = TRUE, fillOpacity = 0.8)

# add point data
