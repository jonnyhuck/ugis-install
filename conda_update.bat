@REM This file can:
@REM    1. set the path (should always be included)
@REM    2.  update conda
@REM    3.  uninstall the understandinggis environment
@REM    4a. install a new understandinggis environment using the yml environment file
@REM    4b. install a new understandinggis environment without the yml environment file
@REM    5.  update all of the libraries in the understandinggis environment to the latest versions
@REM    6.  export a new yml environment file


@REM 1. Set the Path environment variable so that it can see the conda scripts (do not comment out)
set PATH=C:\ProgramData\Anaconda3;C:\ProgramData\Anaconda3\Library\mingw-w64\bin;C:\ProgramData\Anaconda3\Library\usr\bin;C:\ProgramData\Anaconda3\Library\bin;C:\ProgramData\Anaconda3\Scripts;C:\ProgramData\Anaconda3\bin;C:\ProgramData\Anaconda3\condabin;%PATH%

@REM 2. Update Anaconda itself 
@REM https://docs.conda.io/projects/conda/en/latest/commands/update.html
@REM call conda update --name base --channel defaults --yes conda

@REM 3. Remove the old version of the environment
@REM https://docs.conda.io/projects/conda/en/latest/commands/remove.html
@REM call conda remove --name understandinggis --all --yes

@REM 4a. Add new version of the environment using config file
@REM https://docs.conda.io/projects/conda/en/latest/commands/create.html
@REM call conda env create --name understandinggis --file understandinggis-win.yml

@REM 4b. Add new version of the environment without config file
@REM https://docs.conda.io/projects/conda/en/latest/commands/install.html
@REM call conda create --name understandinggis --channel conda-forge --override-channels --yes python=3 pyogrio pygeos geopandas rasterio pysal networkx osmnx pandana urbanaccess dill mapclassify spyder textdistance scikit-image matplotlib-scalebar flask openpyxl

@REM 5. Update the libraries in an existing environment to the latest versions
@REM https://docs.conda.io/projects/conda/en/latest/commands/update.html
@REM call conda activate understandinggis && conda update --name understandinggis --channel conda-forge --override-channels --all --yes --prune && conda deactivate

@REM 6. Export a new .yml environment file
@REM https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#exporting-the-environment-yml-file
@REM call conda activate understandinggis && conda env export > understandinggis.yml && conda deactivate