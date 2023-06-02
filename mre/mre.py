# lazily import key libs to see if they load 
import rasterio,  pysal, networkx, osmnx, skimage, matplotlib_scalebar, flask

# test one by actually opening a shapefile
from geopandas import read_file
gdf = read_file('./mre/data/ne_10m_admin_0_countries.shp')
print(gdf.head())