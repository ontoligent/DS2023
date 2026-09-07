# Installing a Virtual Environment with VS Code

This page tells you have to install a virtual enviroment in VS Code without using Conda.

It assumes that you have Python already installed on your system.

Before getting started, download this file -- [requirements.txt](requirements.txt) -- to the root directory of your VS Code project. That is, it should be in the same directory as the directory in which you have opened VS Code. VS Code will automatically detect this file and install the dependencies during the creation process. 

1. Open the Command Palette by choosing from the menu "View," then "Command Pallette".
2. Type and select "Python: Create Environment... ".
3. Select "Environment Type:" then cllick on  "venv". 
4. Select your desired global Python interpreter from the list. 
5. VS Code will scan your project workspace, find your requirements.txt file, and display it with a checkbox.
6. Check the box next to it and click OK.  

VS Code will now create the  folder, configure your workspace settings, and run in the background.
