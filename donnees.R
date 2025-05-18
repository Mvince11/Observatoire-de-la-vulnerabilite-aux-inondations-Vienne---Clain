library(jsonlite)


bassin_vienne <- readRDS("data/bassin_vienne.rds")
write_json(bassin_vienne, "data/bassin_vienne.json", pretty = TRUE, auto_unbox = TRUE)

cours_d_eau <- readRDS("data/cours_d_eau.rds")
write_json(cours_d_eau, "data/cours_d_eau.json", pretty=TRUE, auto_unbox=TRUE)