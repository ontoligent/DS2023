# Debugging VS Code

DS 2023 | Communicating with Data

## Windows 

If you are installing Miniconda on Windows and are getting an error like the one in the screenshot below, read on.

![](miniconda-windows-error.png)

That error usually isn't a Python problem — the installer extracted the packages fine but got blocked when it tried to write them into `C:\Users\█████\miniconda3`. This is most likely due to an access violation of some kind.

If this happens, hit **Abort** rather than Ignore. An ignored link failure gives you a broken environment that fails in confusing ways later :-(

In any case, follow these steps to fix the problem:

1. **Delete the failed install folder**. d
	1. Remove `C:\Users\█████\miniconda3` entirely before retrying. A partially-linked directory from the aborted attempt will make the next install fail the same way. 
	2. Also check for a stale `.conda` folder in your user directory and delete that too.

2. **Turn off real-time protection temporarily**. 
	1. In Windows Security > Virus & threat protection > Manage settings, switch off Real-time protection. Conda creates thousands of hardlinks very fast, which AV heuristics frequently flag. 
	2. Also check Ransomware protection > Controlled folder access and disable it. 
	4. Turn both back on after the install finishes.

Steps 1 and 2 together resolve the large majority of these problems. If not, follow these steps:

3. **Check whether your user folder is in OneDrive**. 
	1. If the `Documents` folder is synced to OneDrive, the sync client can lock files mid-install. 
	2. Pause OneDrive syncing, or better: install somewhere outside the user profile entirely, like `C:\miniconda3`.

4. **Re-run the installer as administrator**. 
	1. Right-click the `.exe` file and choose Run as administrator.
	2. Pick 'Just Me' when asked about install scope.
	3. Install to a short path with no spaces or non-ASCII characters to avoid a separate class of linking failures.

5. **Re-download if it still fails**. 
	2. Grab a fresh copy from one of the link below and verify the file size looks right before running it.
	- [Miniconda3-py312_26.7.1-1-Windows-x86_64.exe](https://repo.anaconda.com/miniconda/Miniconda3-py312_26.7.1-1-Windows-x86_64.exe) $123.4M$
	- Here is the full page if you are interested repo.anaconda.com/miniconda.

## Mac

If you are on a Mac and VS Code can't find `conda`, as in screenshot below, follow these steps:

![](miniconda-macos-error.png)

1. **Check if conda was installed**
    1. Open a Terminal window to see if miniconda actually installed `conda` on your system. Enter the following command: `ls /opt/miniconda3`
    2. The output should show a list of directory and file names.
    3. If you got this result, then Conda was installed.
    4. If you did not get this result, try reinstalling.

2. **Registor conda with the operating system**
    1. Next, register `conda` with the operating system with this command:\
    `/opt/miniconda3/bin/conda init zsh`
    3. Close the Terminal window and open a new one.
    4. Type `conda` as the command prompt. You should see a lot of text explaining how to use `conda`.
    5. If this is true, close the Terminal window and go to VS Code.

3. **Check if VS Code runs from the command line**
    1. In VS Code, you are going to configure it so that VS Code can run from the command ine. We need to do this because if you run VS Code from the command line, it will be able to find `conda`. 
    2. If VS Code is running, shut it down. Then do this from the Terminal: `code .`.
    3. If VS Code runs, then you should be able to pick `conda` and associated environments from the drop down list above an open notebook. 
    4. The problem is fixed. Going forward, select the environment from the list at the top of the notebook.

4. **If VS Code does not run from the command line**, then open the app from its icon on do this:
    1. In VS Code, press ⇧⌘P, type “shell command”, and pick "Shell Command: Install ‘code’ command in PATH". It may ask for your password.
    2. Close VS Code, open a new Terminal, and enter `code .` again. It should open VS Code and you should be able to pick an environment for your notebook.
    3. If this does not work, contact the IA.