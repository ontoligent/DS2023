---
title: "Installing JupyterLab-MyST"
subtitle: "DS 2023 | Communicating with Data"
---

<img src="https://myst-nb.readthedocs.io/en/latest/_static/logo-wide.svg" width="350" />

## Overview

In this unit, we are going to use **MyST Markdown features** to enhance the formatting, styling, and rendering of our Jupyter notebooks. 

To ensure that you have MyST installed properly for use with Jupyter Lab, follow the instructions below to ensure everything works smoothly without breaking your environment.

## Step 1: Activate Your Environment

Before running any installation commands, ensure your terminal is targeting the correct environment:

```bash
conda activate ds2023
```

## Step 2: Install the Compatible Extension Version

```{caution}

**Do not** run a generic `conda install jupyterlab-myst` without a version number. 

The latest version (`v2.7.0`) has dependency conflicts with `jupyterlab>=4.6` and may cause package errors or hide your markdown cells entirely.

```

To prevent dependency conflicts, you must install the exact version specified, i.e. **`2.4.3`**:

```bash
conda install -c conda-forge jupyterlab-myst=2.4.3 -y
```

## Step 3: Clear Browser Cache & Restart (Critical)


JupyterLab heavily caches JavaScript files in your web browser. 

If you skip this step, the extension will not show up, or your notebook cells might freeze.

1. **Save and close** all open notebooks.
2. **Shut down** your active JupyterLab server in the terminal (`Ctrl + C` from the command line, or "File" > "Shutdown" from the menu).
3. **Clear your browser cache** entirely or open JupyterLab in a fresh *Incognito / Private* window. If you are not sure how to clear the case, see [this guide](https://www.cuit.columbia.edu/clear-cache) from Columbia University for instructions.
4. **Restart** JupyterLab:
   
```bash
jupyter lab
```

## Step 4: Verify Your Installation

To make sure the extension is properly registered, open your terminal (with the environment active) and run:

```bash
jupyter labextension list
```

Look at the output layout. You should see `jupyterlab-myst` listed under your active extensions, marked as **Enabled**:

```text
Config option `kernel_spec_manager_class` not recognized by `LabApp`.
Known labextensions:
   app dir: /anaconda3/envs/ds2023/share/jupyter/lab
        jupyterlab-myst v2.4.3 enabled OK (python, jupyterlab_myst)
```

## Troubleshooting

* **My Markdown cells are completely blank or frozen:** This means your browser is attempting to run conflicting cached assets. Deep-clean your web browser cache or try an alternative browser.

* **Conda gives a "Resolution Conflict" error:** Double-check that you actively typed `=2.4.3` instead of accidentally downloading an incompatible release.
