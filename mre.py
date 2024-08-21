# lazily import key libs to see if they load 
import rasterio,  pysal, networkx, osmnx, skimage, matplotlib_scalebar, flask

# test one by actually opening a shapefile
import geopandas as gpd
gdf = gpd.read_file(gpd.datasets.get_path('naturalearth_lowres'))
print(gdf.head())