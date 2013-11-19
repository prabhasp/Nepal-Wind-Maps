# setwd("~/Code/Nepal-Wind-Maps/")
require(raster)
wind <- raster('data/Wind_5ewam.tif')

require(rasterVis)
gplot(wind) + geom_tile(aes(fill=value)) + 
  scale_fill_gradient(low='yellow', high='red', trans='sqrt')
