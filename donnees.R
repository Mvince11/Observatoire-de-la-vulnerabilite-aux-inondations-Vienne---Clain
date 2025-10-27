library(jsonlite)
library(sf)
library(dplyr)
library(shiny)
library(readxl)


bassin_vienne <- readRDS("data/bassin_vienne.rds")
if (!inherits(bassin_vienne, "sf")) {
  obj <- st_as_sf(bassin_vienne)
}
st_write(bassin_vienne, "layers/bassin_vienne.geojson", driver = "GeoJSON")


cours_d_eau <- readRDS("data/cours_d_eau.rds")
if (!inherits(cours_d_eau, "sf")) {
  cours_d_eau <- st_as_sf(cours_d_eau)
}
st_write(cours_d_eau, "layers/cours_d_eau.geojson", driver = "GeoJSON")


departement <- readRDS("data/departement.rds")
if (!inherits(departement, "sf")) {
  departement <- st_as_sf(departement)
}
st_write(departement, "layers/departement.geojson", driver = "GeoJSON")


region <- readRDS("data/region.rds")
if (!inherits(region, "sf")) {
  region <- st_as_sf(region)
}
st_write(region, "layers/region.geojson", driver = "GeoJSON")

epci <- readRDS("data/epci.rds")
if (!inherits(epci, "sf")) {
  epci <- st_as_sf(epci)
}
st_write(epci, "layers/epci.geojson", driver = "GeoJSON")

perimetre <- readRDS("data/perimetre.rds")
if (!inherits(perimetre, "sf")) {
  perimetre <- st_as_sf(perimetre)
}
st_write(perimetre, "layers/perimetre.geojson", driver = "GeoJSON")

slgri <- readRDS("data/slgri.rds")
if (!inherits(slgri, "sf")) {
  slgri <- st_as_sf(slgri)
}
st_write(slgri, "layers/slgri.geojson", driver = "GeoJSON")


tri <- readRDS("data/tri.rds")
if (!inherits(tri, "sf")) {
  tri <- st_as_sf(tri)
}
st_write(tri, "layers/tri.geojson", driver = "GeoJSON")

zone_inondable <- readRDS("data/zone_inondable.rds")
if (!inherits(zone_inondable, "sf")) {
  zone_inondable <- st_as_sf(zone_inondable)
}
st_write(zone_inondable, "layers/zone_inondable.geojson", driver = "GeoJSON")

indicateurs <- readRDS("data/indicateurs.rds")
if (!inherits(indicateurs, "sf")) {
  indicateurs <- st_as_sf(indicateurs)
}
st_write(indicateurs, "layers/indicateurs.geojson", driver = "GeoJSON")


bounding_box <- readRDS("data/bb.rds")
bounding_box <- st_bbox(bounding_box)
bounding_box <- as.list(bounding_box)
write_json(bounding_box, "data/bb.json", pretty = TRUE, auto_unbox = TRUE)



indicateur <- st_read("layers/indicateurs.geojson")



indicateur_s12a <- indicateur %>%
  filter(!is.na(s12a)) %>%
  mutate(
    s12a_cat = as.numeric(cut(
      s12a,
      breaks = c(-1, 0, 10, 50, 100, 226),
      labels = c(1, 2, 3, 4, 5),
      include.lowest = TRUE
    ))
  )

pal_s12a <- colorFactor(
  palette = c("#d9d9d9", "#ffffff", "#ffaaaa", "#ff5555", "#ff0000"),
  domain = 1:5
)
communes_photos <- read_excel("layers/communes_images.xlsx")
indicateurs <- indicateurs %>% left_join()
