library(jsonlite)
library(sf)


bassin_vienne <- readRDS("data/bassin_vienne.rds")
write_json(bassin_vienne, "data/bassin_vienne.json", pretty = TRUE, auto_unbox = TRUE)

cours_d_eau <- readRDS("data/cours_d_eau.rds")
write_json(cours_d_eau, "data/cours_d_eau.json", pretty=TRUE, auto_unbox=TRUE)

departement <- readRDS("data/departement.rds")
write_json(departement, "data/departement.json", pretty=TRUE, auto_unbox = TRUE)

region <- readRDS("data/region.rds")
write_json(region, "data/region.json", pretty = TRUE, auto_unbox = TRUE)

epci <- readRDS("data/epci.rds")
write_json(epci, "data/epci.json", pretty = TRUE, auto_unbox = TRUE)

perimetre <- readRDS("data/perimetre.rds")
write_json(perimetre, "data/perimetre.json", pretty = TRUE, auto_unbox = TRUE)

slgri <- readRDS("data/slgri.rds")
write_json(slgri, "data/slgri.json", pretty = TRUE, auto_unbox = TRUE)

tri <- readRDS("data/tri.rds")
write_json(tri , "data/tri.json", pretty = TRUE, auto_unbox = TRUE)

zone_inondable <- readRDS("data/zone_inondable.rds")
write_json(zone_inondable, "data/zone_inondable.json", pretty = TRUE, auto_unbox = TRUE)

indicateurs <- readRDS("data/indicateurs.rds")
write_json(indicateurs, "data/indicateurs.json", pretty = TRUE, auto_unbox = TRUE)

bounding_box <- readRDS("data/bb.rds")
bounding_box <- st_bbox(bounding_box)
bounding_box <- as.list(bounding_box)
write_json(bounding_box, "data/bb.json", pretty = TRUE, auto_unbox = TRUE)