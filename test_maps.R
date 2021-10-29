states <- map_data("state") # US states data
head(states)

states %>% ggplot() + aes(x=long, y=lat)+
  geom_point() + coord_map()

nydata <- states %>% filter(region=="new york")
nydata %>% ggplot() + aes(x=long, y=lat)+
  geom_point() + coord_map()

nydata <- states %>% filter(group==35)
nydata %>% ggplot() + aes(x=long, y=lat)+
  geom_point() + coord_map()

us_map <- states %>% ggplot() + aes(x=long, y=lat, group=group)+
  geom_polygon(color="white", fill="orange") + coord_map()

us_map <- us_map + geom_point(aes(x=-100, y=30))
us_map

# creating state centers
stateCenter <- data.frame(state=tolower(state.name),
                                        x=state.center$x,
                                        y=state.center$y)

# merging with us map location
merge(states,stateCenter)


us <- map_data("state")
us$state_name <- tolower(us$region)

map <- us %>% ggplot() + aes(x=long, y= lat, group=group) +
  geom_polygon(fill="orange", color="white") + coord_map() +
  ggtitle("US Map")
map

ny_counties <- map_data("county", "new york")
ny_map <- ny_counties %>% ggplot() + aes(x=long, y=lat, group=group) +
  geom_polygon(color="White", fill="orange") + coord_map(projection = "mercator")
ny_map
nydata <- read_csv("https://intro-datascience.s3.us-east-2.amazonaws.com/nyData.csv")
mergeNY <- merge(ny_counties, nydata, all.x = TRUE, by.x="subregion", by.y="county")

mergeNY <- mergeNY %>% arrange(order)

ny_map <- mergeNY %>% ggplot() + aes(x=long, y=lat, group=group, fill=pop2000) +
  geom_polygon() +coord_map(projection = "mercator")
ny_map

library(RCurl)
library(jsonlite)
station_information <- fromJSON(getURL("https://gbfs.citibikenyc.com/gbfs/en/station_information.json"))
station_information <- station_information$data$stations
station_status <- fromJSON(getURL('https://gbfs.citibikenyc.com/gbfs/en/station_status.json'))
station_status <- station_status$data$stations
merge_stations <- merge(station_information,station_status, all.x = TRUE, by="station_id")
merge_stations <- merge_stations %>% select(lat,lon,num_bikes_available)

bb <- c(left=min(merge_stations$lon),
        bottom=min(merge_stations$lat),right=max(merge_stations$lon),top=max(merge_stations$lat))
stamenMap <- get_stamenmap(bbox = bb)
ggmap(stamenMap) + geom_point(data=merge_stations,aes(x=lon, y=lat, color=num_bikes_available))

