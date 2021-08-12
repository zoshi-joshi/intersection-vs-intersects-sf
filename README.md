# intersection-vs-intersects-sf
# difference between intersection and intersects sf function


# code
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


# output
> # library 
> library(sf)
> library(dplyr)
> # polygon s
> s=rbind(c(1,1),c(10,1),c(10,10),c(1,10),c(1,1))%>%list%>%st_polygon%>%st_sfc
> plot(s)
> # rectangle r
> r=rbind(c(-1,2),c(11,2),c(11,4),c(-1,4),c(-1,2))%>%list%>%st_polygon%>%st_sfc
> # plot above the previous layer
> # lty = line type
> plot(r, add=TRUE, lty=5)
> # apply intersection function
> i=st_intersection(r,s)
> plot(i, add=TRUE, lty=2, col='red')
> # intersected part coordinates
> i
Geometry set for 1 feature 
Geometry type: POLYGON
Dimension:     XY
Bounding box:  xmin: 1 ymin: 2 xmax: 10 ymax: 4
CRS:           NA
POLYGON ((1 4, 10 4, 10 2, 1 2, 1 4))
> # appy intersects function 
> j=st_intersects(r,s)
> # returns logical value
> j
Sparse geometry binary predicate list of length 1, where the predicate was `intersects'
 1: 1
> 







