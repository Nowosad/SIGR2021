osm_combine = function(osm_points, osm_polygons) {
  require(sf)
  if(nrow(osm_polygons) > 0) { # deduplicate points
    osm_points_in_polygons = osm_points[osm_polygons, ]
    # mapview::mapview(osm_points_in_polygons)
    osm_points_not_in_polygons = osm_points[!osm_points$osm_id %in% osm_points_in_polygons$osm_id,] 
    osm_polygons_centroids = sf::st_centroid(osm_polygons) # convert polygons to points and join together
    # setdiff(names(osm_points), names(osm_polygons_centroids))
    names_in_both = intersect(names(osm_points), names(osm_polygons_centroids))
    osm_points = rbind(osm_points_not_in_polygons[names_in_both], osm_polygons_centroids[names_in_both])
  } 
  osm_points
}