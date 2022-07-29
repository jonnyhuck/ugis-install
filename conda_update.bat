@REM 1. Set the Path environment variable so that it can see the conda scripts
@REM the way to do this is:
@REM    a. Open the Anaconda Prompt on the machine to be updated
@REM    b. run `echo PATH` to see the $PATH variable
@REM    c. Get the paths for Anaconda from there and add replace the below with them
@REM NOTE: these paths are from my machine - they will need re-setting for the local machine by changing the username
@REM NOTE: beware not to lose the `set PATH=` at the start or the `;%PATH%` at the end!
set PATH=C:\Users\mzdssjh8\AppData\Local\Continuum\anaconda3;C:\Users\mzdssjh8\AppData\Local\Continuum\anaconda3\Library\mingw-w64\bin;C:\Users\mzdssjh8\AppData\Local\Continuum\anaconda3\Library\usr\bin;C:\Users\mzdssjh8\AppData\Local\Continuum\anaconda3\Library\bin;C:\Users\mzdssjh8\AppData\Local\Continuum\anaconda3\Scripts;C:\Users\mzdssjh8\AppData\Local\Continuum\anaconda3\bin;C:\Users\mzdssjh8\AppData\Local\Continuum\anaconda3\condabin;%PATH%

@REM 2. Update Anaconda itself 
@REM (you may wish to comment this out if you don't want to do this step)
@REM https://docs.conda.io/projects/conda/en/latest/commands/update.html
call conda update --name base --channel defaults --yes conda

@REM 3. Remove the old version of the environment
@REM https://docs.conda.io/projects/conda/en/latest/commands/remove.html
call conda remove --name understandinggis --all --yes

@REM 4. Add new version of the environment
@REM https://docs.conda.io/projects/conda/en/latest/commands/create.html
@REM NOTE: if the YAML file is not in the same directory place then update the file path
call conda env create --name understandinggis --file understandinggis-win.yml

@REM 5. Update the libraries to latest versions
@REM https://veranostech.github.io/docs-korean-conda-docs/docs/build/html/commands/env/conda-env-create.html
@REM NOTE: the path for this output will need to be updated for the desired location on the local machine
@REM call conda activate understandinggis
@REM call conda update --all --yes --prune >> C:\Users\mzdssjh8\Documents\understandinggis_update.log