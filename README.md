# `understandinggis` Conda Environment Manager

This is how to update the Understandinggis Anaconda environment on a Windows machine.

I created a batch file like this for Paul Eason in 2020, which simply updated the environment. This year, 
I am adding some additional libraries, so it might be easier to drop the environment and then add a new one. 
This is what the batch file does. in the below, backticks (``) enclose a command to run in CMD.exe.

Aside from this readme file, this zip directory should also contain:
    - conda_update.bat: a Windows batch file that will remove the understandinggis environment, then replace 
        it with a new, updated one
    - understandinggis-win.yml: a YAML file describing the Anaconda environment that the batch file should install

Instructions for use:
    1. First, we need to add to the PATH variable so that the CMD.exe can see the conda executables (the lab machines 
        are all the same, so this only needs doing once). To do this:
            a. Open the Anacopnda Prompt on the machine to be updated
            b. Run `echo PATH` to see the $PATH variable
            c. Get the paths for Anaconda from there and replace those in the 
    2. Load the .bat and .yml files from this directoy onto the machine
    3. run the .bat file

If you have any problems, you can contact me at:
    jonathan.huck@manchester.ac.uk