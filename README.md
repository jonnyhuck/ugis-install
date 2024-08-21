# `understandinggis` Conda Environment Manager

This is how to update the `understandinggis` conda environment on a Windows machine (or computer lab).

Aside from this readme file, this repo also contains:
- `conda_update.bat`: a Windows batch file that contains all of the necessary commands to create, remove and update the `undertandinggis` conda environment. 
- `understandinggis-win.yml`: a YAML file describing the current version of the Anaconda environment that the batch file should install (last updated 02/06/2023)
- `mre/mre.py`: a Python script that provides a simple test for the installation (imports the libraries and then uses one of them to load a file).

## How to use `conda_update.bat` 

This repository also contains `conda_update.bat`, which was created for automated deployment to computer labs, as Anaconda Prompt cannot always be used in this scenario. The solution to this is simply to edit the path variable to include the conda binaries, before running the desired commands. To this end, this script permits any of the following actions:
* setting the `$PATH` variable so that it can see the `conda` executables (must be done once per instance of cmd.exe before any other conda commands are run)
* updating `conda`
* removing a previous `understandinggis` environment
* installing a fresh `understandinggis` environment (either with or without the `understandinggis-win.yml` file)
* updating an existing `understandinggis` environment 
* exporting a new yml environment file to facilitate replication of the `understandinggis` environment

The desired processes for a given application can be included and the rest omitted simply by commenting / uncommenting the relevant sections (with `@REM`).

To use this script, you need to:
1. Load the files from this gist onto your machine, either via [direct download](https://gist.github.com/jonnyhuck/e8bbf299b08a7a5db4681df5e15b7309/archive/5f79202a116672515fc56fec2caa04f041ab60fc.zip), or using git with: `git clone git@gist.github.com:e8bbf299b08a7a5db4681df5e15b7309.git`
1. Open up the `conda_update.bat` file in Notepad or another text editor and select which parts you would like to run by commenting / uncommenting them accordingly (`@REM`)
1. Run the file by simply pasting the below into cmd.exe and pressing Enter:
```cmd
conda_update.bat  >> conda_update.log
```

If this didn't work, the conda binaries must be stored in an unexpected location on your machine. You can resolve this by finding them and then manually editing the first command (the one that sets the `PATH` variable) to reflect the correct location of the conda binaries. To do this, simply:

1. Open the **Anaconda Prompt** on the machine to be updated
1. Run `echo PATH` to see the `PATH` variable
1. Get the required paths from there and replace those that I have specified in the `conda_update.bat` file - be careful not to lose the `set PATH=` at the start of the line or the `;%PATH%` at the end!

## How to test the environment

1. Open **Anaconda Prompt** and run the following commands, pressing **Enter** after each one.

```cmd
conda activate understandinggis
python mre/mre.py
```

 If it works, a table of data should print the terminal. If not, then you should get an error (probably describing how the file will not load).

---

For more on conda commands, see the cheat sheet [here](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf) and the docs [here](https://docs.conda.io/projects/conda/en/latest/commands.html).
