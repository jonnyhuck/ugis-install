@REM before use, you must replace mxxxxxxx on line with your user name.
@REM Step 1 (set the path) should always be completed (but only once in a cmd instance), after which you can comment / uncomment 
@REM  for the desired combination of:
@REM    2.  update conda
@REM    3.  uninstall the understandinggis environment
@REM    4a. install a new understandinggis environment using the yml environment file
@REM    4b. install a new understandinggis environment without the yml environment file
@REM    5.  update all of the libraries in the understandinggis environment to the latest versions
@REM    6.  export a new yml environment file


@REM 1. Set the Path environment variable so that it can see the conda scripts
@REM NOTE: Here you need to replace mxxxxxxx with your username, making sure not to leave any spaces either before or after it!
set username=mxxxxxxx
set PATH=C:\Users\%username%\AppData\Local\Continuum\anaconda3;C:\Users\%username%\AppData\Local\Continuum\anaconda3\Library\mingw-w64\bin;C:\Users\%username%\AppData\Local\Continuum\anaconda3\Library\usr\bin;C:\Users\%username%\AppData\Local\Continuum\anaconda3\Library\bin;C:\Users\mzdssjh8\AppData\Local\Continuum\anaconda3\Scripts;C:\Users\%username%\AppData\Local\Continuum\anaconda3\bin;C:\Users\%username%\AppData\Local\Continuum\anaconda3\condabin;%PATH%

@REM 2. Update Anaconda itself 
@REM https://docs.conda.io/projects/conda/en/latest/commands/update.html
@REM call conda update --name base --channel defaults --yes conda

@REM 3. Remove the old version of the environment
@REM https://docs.conda.io/projects/conda/en/latest/commands/remove.html
call conda remove --name understandinggis --all --yes

@REM 4a. Add new version of the environment
@REM https://docs.conda.io/projects/conda/en/latest/commands/create.html
call conda env create --name understandinggis --file understandinggis-win.yml >> understandinggis_create_with_yml.log

@REM 4b. Add new version of the environment (only for if the above cannot be used for any reason)
@REM https://docs.conda.io/projects/conda/en/latest/commands/install.html
@REM call conda create --yes --name understandinggis
@REM call conda activate understandinggis
@REM call conda install --yes --channel conda-forge --force-reinstall geopandas rasterio pysal networkx osmnx pandana urbanaccess dill mapclassify spyder textdistance scikit-image matplotlib-scalebar flask sphinx >> understandinggis_install_no_yml.log

@REM 5. Update the libraries in an existing environment to the latest versions
@REM https://docs.conda.io/projects/conda/en/latest/commands/update.html
@REM call conda activate understandinggis
@REM call conda update --all --yes --prune

@REM 6. Export a new .yml environment file
@REM https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#exporting-the-environment-yml-file
@REM call conda activate understandinggis
@REM call conda env export > understandinggis-win.yml