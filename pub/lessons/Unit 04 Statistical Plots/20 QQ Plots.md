---
title: QQ Plots
type: lesson
publish: true
date: 2026-09-18
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
    display_name: Python 3
    language: python
    name: python3
---

## Topics

- What is a QQ plot?
- What is it used for?
- How do you create one?

## Resources

- [Statsmodels function](https://www.statsmodels.org/stable/generated/statsmodels.graphics.gofplots.qqplot.html)

## Code

```python
import numpy as np
import statsmodels.api as sm
import matplotlib.pyplot as plt

data_points = np.random.normal(0, 1, 100)    
sm.qqplot(data_points, line ='45')
```



