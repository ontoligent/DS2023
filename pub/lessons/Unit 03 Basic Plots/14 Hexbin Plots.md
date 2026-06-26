---
title: Hexbin Plots
type: lesson
publish: true
date: 2026-09-11
jupyter:
  jupytext:
    cell_metadata_filter: -all
    formats: ipynb,md
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.19.3
  kernelspec:
    display_name: .venv (3.14.5)
    language: python
    name: python3
---
## Topics

- Hexbin plots as variants of scatter plots.
- Compare to use of alpha in scatter plots when points are stacked.
- Compare to heatmaps.

## Resources

See the [Tutorials Point](https://www.tutorialspoint.com/python_pandas/python_pandas_hexagonal_bin_plot.htm) page on the topic.

## Code

Here we motivate the use of a hexbin instead of a scatter plot.
We load the Iris data set and visualize the relationship between two features, `sepal_length` and `sepal_width`.

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

df = sns.load_dataset("iris")
print(df.head())
```

A simple scatter plot shows the distribution of data points in the feature space, but it does not give any information about how many points reside in a given place. 

```python
df.plot.scatter("sepal_length", "sepal_width")
plt.show()
```

We can address this visually by setting the alpha value to something less than $1$, say $.25$. Now we can see that there are more points in the central area. However, it's still not clear how much they are concentrated.

```python
df.plot.scatter("sepal_length", "sepal_width", alpha=.25)
plt.show()
```

With a hexbin plot, the concentration is made visible by creating hexagonal bins that are shaded as a function of the number of points in the bin.

```python
df.plot.hexbin(x="sepal_length", y="sepal_width", gridsize=25, figsize=(8, 6))
plt.title('Basic Hexagonal Bin Plot')
plt.show()
```
