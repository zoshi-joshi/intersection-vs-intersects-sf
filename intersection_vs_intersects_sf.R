# library 
library(sf)
library(dplyr)
# polygon s
s=rbind(c(1,1),c(10,1),c(10,10),c(1,10),c(1,1))%>%list%>%st_polygon%>%st_sfc
plot(s)
# rectangle r
r=rbind(c(-1,2),c(11,2),c(11,4),c(-1,4),c(-1,2))%>%list%>%st_polygon%>%st_sfc
# plot above the previous layer
# lty = line type
plot(r, add=TRUE, lty=5)

# apply intersection function
i=st_intersection(r,s)
plot(i, add=TRUE, lty=2, col='red')
# intersected part coordinates
i

# appy intersects function 
j=st_intersects(r,s)
# returns logical value
j
