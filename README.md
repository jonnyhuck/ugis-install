# `understandinggis` Conda Environment Manager

This is how to update the `understandinggis` conda environment on a Windows machine (or computer lab).

Aside from this readme file, this repo also contains:
    - `conda_update.bat`: a Windows batch file that will remove the understandinggis environment, then replace 
        it with a new, updated one
    - `understandinggis-win.yml`: a YAML file describing the Anaconda environment that the batch file should install

## How to use `understandinggis-win.yml` 

This repository contains a `understandinggis-win.yml` file describing the environment, which can simply be used to install the environment using the **Anaconda Command Prompt** with:
```cmd
conda create --yes --name understandinggis --file understandinggis-win.yml
```

## How to use `conda_update.bat` 

This repository also contains `conda_update.bat`, which was created for automated deployment to computer labs, as Anaconda Prompt cannot always be used in this scenario. The solution to this is simply to edit the path variable to include the conda binaries, before running the desired commands. To this end, this script permits any combination of the following actions:
* setting the `$PATH` variable so that it can see the `conda` executables (must be done once per instance of cmd.exe before any other conda commands are run)
* updating `conda`
* removing the previous `understandinggis` environment
* installing a fresh `understandinggis` environment (either with or without the `understandinggis-win.yml` file)
* updating all of the freshly installed libraries (which shouldn't do anything if you have done the above three, but might be useful on its own)
* exporting a new yml environment file

The desired processes for a given application can be included and the rest omitted simply by commenting / uncommenting the relevant sections (with `@REM`).

To use this script, you need to:
1. Load the files from this gist onto your machine, either via [direct download](https://gist.github.com/jonnyhuck/e8bbf299b08a7a5db4681df5e15b7309/archive/5f79202a116672515fc56fec2caa04f041ab60fc.zip), or using git with: `git clone git@gist.github.com:e8bbf299b08a7a5db4681df5e15b7309.git`
1. Open up the `conda_update.bat` file in Notepad or another text editor and replace `mxxxxxxx` with the Windows username that you are currently using - making sure to leave no spaces between the name and the `=` sign, nor any trailing spaces (e.g. `set username=mxxxxxxx`, **not** `set username= mxxxxxxx `)<sup>*</sup>
1. Select which parts you would like to run by commenting / uncommenting them accordingly (`@REM`)
1. Run the file by simply pasting the below into cmd.exe and pressing Enter:
```cmd
`conda_update.bat  >> conda_update.log`
```

<sup>*</sup>If this didn't work, the conda binaries must be stored in an unexpected location on your machine. You can resolve this by finding them and then manually editing the first command (the one that sets the `PATH` variable) to reflect the correct location of the conda binaries. To do this, simply:

1. Open the **Anaconda Prompt** on the machine to be updated
1. Run `echo PATH` to see the `PATH` variable
1. Get the required paths from there and replace those that I have specified in the `conda_update.bat` file - be careful not to lose the `set PATH=` at the start of the line or the `;%PATH%` at the end!

---

For more on conda commands, see the cheat sheet [here](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf) and the docs [here](https://docs.conda.io/projects/conda/en/latest/commands.html).
