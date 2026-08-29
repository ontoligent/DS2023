# If you have trouble installing Miniconda on Windows

If you are installing Miniconda on Windows and are getting an error like the one in the screenshot below, read on.

![](miniconda-windows-error.png)

That error usually isn't a Python problem — the installer extracted the packages fine but got blocked when it tried to write them into `C:\Users\█████\miniconda3`. This is most likely due to an access violation of some kind.

If this happens, hit **Abort** rather than Ignore. An ignored link failure gives you a broken environment that fails in confusing ways later :-(

In any case, follow these steps to fix the problem:

1. **Delete the failed install folder**. 
	1. Remove `C:\Users\█████\miniconda3` entirely before retrying. A partially-linked directory from the aborted attempt will make the next install fail the same way. 
	2. Also check for a stale `.conda` folder in your user directory and delete that too.
2. **Turn off real-time protection temporarily**. 
	1. In Windows Security > Virus & threat protection > Manage settings, switch off Real-time protection. Conda creates thousands of hardlinks very fast, which AV heuristics frequently flag. 
	2. Also check Ransomware protection > Controlled folder access and disable it. 
	4. Turn both back on after the install finishes.

Steps 1 and 2 together resolve the large majority of these problems. If not, follow these steps:

3. **Check whether your user folder is in OneDrive**. 
	1. If `Documents/Desktop` are OneDrive-synced, the sync client can lock files mid-install. 
	2. Pause OneDrive syncing, or better, install somewhere outside the user profile entirely, like `C:\miniconda3`.
4. **Re-run the installer as administrator**. 
	1. Right-click the `.exe` file and choose Run as administrator.
	2. Pick 'Just Me' when asked about install scope.
	3. Install to a short path with no spaces or non-ASCII characters to avoid a separate class of linking failures.
5. **Re-download if it still fails**. 
	2. Grab a fresh copy from one of the link below and verify the file size looks right before running it.
	- [Miniconda3-py312_26.7.1-1-Windows-x86_64.exe](https://repo.anaconda.com/miniconda/Miniconda3-py312_26.7.1-1-Windows-x86_64.exe) $123.4M$
	- Here is the full page if you are interested repo.anaconda.com/miniconda.