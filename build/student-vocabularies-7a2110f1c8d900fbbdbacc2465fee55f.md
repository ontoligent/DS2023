---
title: Ontological Assessment of Student Visualization Vocabulary
subtitle: DS 2023 | Communicating with Data
---

## Overview

Each term is assessed for **ontological level**:

- **Atomic** — maps to one or a few specific function calls; a single, unambiguous operation.
- **Compound** — composed of multiple atomic operations; requires a sequence of steps.
- **Abstract** — describes an intent or design principle; no direct translation to a tool operation.
- **Meta** — describes the analyst's role or epistemic process; not a data or visual operation at all.

Terms assessed as Abstract or Meta are not directly *executable*; they describe goals that must be decomposed into atomic or compound operations before a tool can be chosen.

---

## 1. Data Preparation

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Normalize | Apply a consistent scale or form across variables to enable comparison | Atomic | `sklearn.preprocessing.StandardScaler`; `MinMaxScaler`; `df.apply()` |
| Transform | Convert data to a new representation or scale | Abstract | Too broad; could be `np.log()`, `df.apply()`, `sklearn` Pipeline, or any of the rows below |
| Sort | Order observations by the value of a variable | Atomic | `df.sort_values()` |
| Clean | Remove errors, blanks, and inconsistencies | Compound | `df.dropna()`; `df.fillna()`; `df.str.strip()`; `df.replace()` |
| Condense | Reduce the size or complexity of a dataset | Abstract | Intent-dependent; could be `df.groupby().agg()`, `df.sample()`, or filtering |
| Combine | Merge two or more datasets or views into one | Atomic | `pd.merge()`; `pd.concat()` |
| Reshape | Restructure data between long and wide formats | Atomic | `df.melt()`; `df.pivot()`; `df.pivot_table()` |
| Deduplicate | Eliminate repeated records from a dataset | Atomic | `df.drop_duplicates()` |
| Transpose | Swap rows and columns | Atomic | `df.T`; `df.transpose()` |
| Map | Assign raw values to categories, bins, or identifiers | Atomic | `s.map()`; `s.replace()`; `pd.cut()`; `pd.qcut()` |
| Declare | Set a column's data type and measurement scale | Atomic | `s.astype('category')`; `s.astype('float64')`; `pd.to_datetime()` — *Added from 53 Visualization Vocabulary.ipynb* |
| Impute | Replace missing values with statistical estimates rather than dropping them | Atomic | `df.fillna(df.mean())`; `sklearn.impute.SimpleImputer`; `KNNImputer`; `IterativeImputer` |
| Interpolate | Fill gaps in a sequence by estimating values between known neighbors | Atomic | `df.interpolate(method='linear')`; `df.interpolate(method='time')` |
| Sample | Randomly draw a subset of rows for exploration, prototyping, or bootstrapping | Atomic | `df.sample(n=)`; `df.sample(frac=)`; `sklearn.model_selection.train_test_split()` |
| Encode | Convert categorical variables to numeric representations for analysis or modeling | Atomic | `pd.get_dummies()`; `sklearn.preprocessing.OneHotEncoder`; `LabelEncoder`; `OrdinalEncoder` |
| Bin | Group a continuous variable into discrete intervals | Atomic | `pd.cut()`; `pd.qcut()` |
| Reduce | Project high-dimensional data into fewer dimensions for visualization or modeling | Atomic | `sklearn.decomposition.PCA`; `sklearn.manifold.TSNE`; `umap.UMAP` |

---

## 2. Summarization & Aggregation

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Aggregate | Compute a summary value over a group of observations | Atomic | `df.groupby().agg()`; `.sum()`; `.mean()`; `.count()` |
| Summarize | Extract key numbers representing a specific aspect of the data | Compound | `df.describe()`; `df.groupby().agg()`; `df.value_counts()` |
| Compute Derived Value | Calculate a new variable from existing ones | Atomic | `df.assign()`; `df['col'] = expr`; `df.eval()` |
| Quantify | Express a qualitative pattern as a numeric value | Abstract | Intent-dependent; could be encoding, counting, or scoring |
| Estimate | Approximate a value without exact computation | Abstract | Overlaps with Approximate; could be `df.sample()`, a `sklearn` model, or `scipy.stats` |
| Approximate | Provide a close but imprecise numeric representation | Abstract | Overlaps with Estimate; `np.round()`; regression; curve fitting |
| Apply linear regression | Fit a line to quantify direction and strength of a trend | Atomic | `sklearn.linear_model.LinearRegression`; `statsmodels.formula.api.ols()` |
| Transform (Statistical) | Compute a visualization-specific summary within the render step (binning, smoothing, confidence intervals) | Atomic | `sns.histplot()`; `sns.kdeplot()`; `sns.regplot()`; `sns.boxplot()` — *Added from 53 Visualization Vocabulary.ipynb* |

---

## 3. Distribution & Shape

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Characterize Distribution | Describe the spread, modality, skew, and form of a variable's values | Compound | `df.describe()`; `sns.histplot()`; `sns.kdeplot()`; `sns.boxplot()`; `scipy.stats.skew()` |
| Determine Range | Identify min/max values; enumerate unique categorical values | Atomic | `s.min()`; `s.max()`; `s.unique()`; `s.nunique()` |
| Distribute | Show how values are spread across observations or space | Abstract | Ambiguous; could mean `sns.histplot()`, spatial `geopandas`, or layout spacing |

---

## 4. Ordering & Ranking

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Rank | Assign a relative position to each observation based on a variable | Atomic | `s.rank()`; `df.sort_values()` with positional index |
| Reorder | Change the sequence of categories or observations to reveal a pattern | Atomic | `df.sort_values()`; `pd.Categorical(categories=ordered_list, ordered=True)` |

---

## 5. Comparison

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Compare | Evaluate differences between two or more categories, groups, or variables | Abstract | No single operation; typically `df.groupby()` + `sns.barplot()` or `plt.subplots()` |
| Contrast | Highlight the degree of difference between two values or groups | Abstract | Overlaps with Compare; achieved through chart choice, shared axes, and color — not one call |
| Juxtapose | Place two views side by side to make differences immediately visible | Atomic | `plt.subplots(1, 2)`; `sns.FacetGrid`; `plotly.make_subplots()` |
| Align | Arrange marks so that differences in size are easy to judge | Atomic | `plt.subplots(sharex=True, sharey=True)`; `ax.set_xlim()` to match ranges |
| Categorize | Group observations into discrete classes for comparison | Atomic | `pd.cut()`; `pd.qcut()`; `pd.Categorical()` |
| Differentiate | Identify the specific features that distinguish one group from another | Abstract | Compound process; typically multiple grouped comparisons |
| Define Precision | Represent values with enough accuracy to support meaningful comparison | Abstract | Design decision; no direct tool equivalent |

---

## 6. Part-Whole Decomposition

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Show Proportion | Express the relative size of parts within a whole | Atomic | `s / s.sum()`; `plt.pie()`; `sns.barplot()` with `df.value_counts(normalize=True)` |
| Show Partition | Divide a total into mutually exclusive parts | Compound | `df.groupby().size()` + `plt.pie()` or stacked bar |
| Compose | Show how a whole is made up of its components | Abstract | Realized as pie, stacked bar, or treemap; overlaps with Show Proportion and Show Partition |
| Show Volume | Represent the cumulative or total magnitude of a quantity | Atomic | `plt.fill_between()`; `sns.lineplot(fill=True)`; area charts in `plotly` |
| Apportion | Allocate a total into proportional shares | Atomic | `s / s.sum()`; overlaps with Show Proportion |

---

## 7. Relationship & Correlation

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Connect | Reveal relationships between distinct entities using edges or flows | Atomic | `networkx`; `plotly` Sankey; `plt.plot()` between node coordinates |
| Cluster | Group observations that are similar across one or more variables | Atomic | `sklearn.cluster.KMeans()`; `DBSCAN()`; `AgglomerativeClustering()`; `sns.clustermap()` |
| Correlate | Determine whether and how two variables move together | Atomic | `df.corr()`; `scipy.stats.pearsonr()`; `sns.heatmap(df.corr())`; `sns.scatterplot()` |
| Categorical Relationship | Show how membership in one category co-occurs with another | Compound | `pd.crosstab()`; `sns.heatmap()`; `plotly` Sankey / alluvial diagram |
| Co-vary | Observe how two variables change together | Atomic | `df.cov()`; `sns.scatterplot()`; overlaps with Correlate |
| Relate | Show the association between two variables | Abstract | Overlaps with Correlate and Co-vary; too broad without further specification |
| Trends | Identify a directional pattern across a variable or over time | Abstract | Could be `sns.regplot()`, `sns.lineplot()`, or time-series decomposition via `statsmodels.tsa` |

---

## 8. Temporal Analysis

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Track | Follow a value through an ordered sequence | Atomic | `sns.lineplot()`; `plt.plot()` |
| Trace | Follow continuous change through time | Atomic | `sns.lineplot()`; `plotly.express.line()`; overlaps with Track |
| Accumulate | Show quantities building up cumulatively over time | Atomic | `s.cumsum()`; `plt.fill_between()`; area chart variant of `sns.lineplot()` |
| Forecast | Visualize predicted future values based on current trends | Compound | Model fitting (`statsmodels.tsa`, `sklearn`, `prophet`) + `sns.lineplot()` for output |
| Progressing | Show how a value changes across a time dimension | Abstract | Subsumed by Track and Trace; no distinct tool |
| Smooth | Apply a rolling or kernel-based function to reduce noise in a series | Atomic | `df.rolling(n).mean()`; `df.ewm(span=n).mean()`; `scipy.ndimage.gaussian_filter1d()` |
| Resample | Change the temporal resolution of time-series data | Atomic | `df.resample('ME').mean()`; `df.resample('W').sum()` |
| Decompose | Separate a time series into trend, seasonal, and residual components | Atomic | `statsmodels.tsa.seasonal.seasonal_decompose()`; `statsmodels.tsa.stl.STL()` |

---

## 9. Anomaly & Extremum Detection

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Find Extremum | Identify observations with the highest or lowest values | Atomic | `s.idxmax()`; `s.idxmin()`; `df.nlargest(n, col)`; `df.nsmallest(n, col)` |
| Find Anomalies | Identify observations with unexpected or exceptional values | Compound | IQR rule with `df.loc[]`; `scipy.stats.zscore()`; `sklearn.ensemble.IsolationForest` |
| Eliminate | Remove or flag outliers or values that distort the analysis | Atomic | `df.loc[condition]`; `s.clip(lower, upper)`; `df.drop()` |

---

## 10. Filtering & Selection

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Isolate | Narrow the data to observations satisfying specific conditions | Atomic | `df.loc[]`; `df.query()`; boolean indexing |
| Focus | Direct attention to a specific subset of the data | Abstract | Could mean filtering (`df.loc[]`) or visual highlighting; intent-dependent |
| Slice | Select a cross-section of the data on one or more dimensions | Atomic | `df.loc[]`; `df.iloc[]`; `df.xs()` |
| Trim | Remove peripheral or irrelevant data or visual elements | Atomic | `s.clip()`; `df.loc[condition]`; overlaps with Isolate and Eliminate |
| Specify | Define conditions that constrain which observations are shown | Abstract | Design decision; implemented via filtering or chart parameters |
| Select | Project to a subset of columns | Atomic | `df[['col1', 'col2']]`; `df.loc[:, cols]`; `df.filter(items=)` — *Added from 53 Visualization Vocabulary.ipynb* |
| Retrieve Value | Given specific observations, look up the values of specified variables | Atomic | `df.loc[row_labels, col_labels]`; `df.at[]`; `df.iat[]` — *Added from Amar et al. (2005) via 53 Visualization Vocabulary.ipynb* |

---

## 11. Visual Layout

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Subplot | Place multiple chart panels side by side for comparison | Atomic | `plt.subplots()`; `sns.FacetGrid`; `plotly.make_subplots()` |
| Concentration | Show the density or clustering of values in a spatial area | Abstract | Could be `plt.hexbin()`; `sns.kdeplot()`; or `geopandas` choropleth — intent-dependent |
| Localize / Situate | Position data in geographic or spatial context | Atomic | `geopandas.GeoDataFrame.plot()`; `plotly.express.scatter_mapbox()` |
| Widen | Expand the visible range of an axis or view | Atomic | `ax.set_xlim(lo, hi)`; `ax.set_ylim(lo, hi)` |
| Expand | Broaden the scope or extent of a visualization | Abstract | Ambiguous; could mean axis limits, adding variables, or faceting |
| Zoom | Narrow the visible range to magnify a region of interest | Atomic | `ax.set_xlim()`; `ax.inset_axes()` |
| Rotate | Change the orientation of axis labels | Atomic | `plt.xticks(rotation=45)`; `ax.tick_params(axis='x', rotation=45)` |
| Autosize | Scale a visualization automatically to fit its display context | Atomic | `plt.tight_layout()`; `plt.subplots(figsize=)`; `plotly` responsive layout |
| Size Proportionally | Scale visual marks in direct proportion to data values | Atomic | `plt.scatter(s=values)`; `plotly.express.scatter(size=col)` |
| Layer | Superimpose multiple geometric marks on the same axes | Atomic | Multiple calls on the same `ax`; e.g. `sns.scatterplot()` + `sns.regplot(scatter=False)` — *Added from 53 Visualization Vocabulary.ipynb* |

---

## 12. Visual Encoding

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Color | Use a colormap to encode a third variable | Atomic | `plt.scatter(c=col, cmap='viridis')`; `sns.scatterplot(hue=col)` |
| Recolor | Change the color mapping of an existing visualization | Atomic | `artist.set_color()`; `sns.set_palette()`; reassigning `cmap` |
| Gradient | Use a continuous color scale to encode magnitude | Atomic | `plt.scatter(c=col, cmap=)`; `sns.heatmap(cmap=)`; overlaps with Color |
| Weight | Encode a variable through mark thickness or prominence | Atomic | `plt.plot(linewidth=val)`; `plt.scatter(linewidths=col)` |
| Scale | Adjust the axis range or unit to reveal relevant variation | Atomic | `ax.set_xscale('log')`; `ax.set_yscale('symlog')` |
| Label | Attach text identifiers to individual data elements | Atomic | `ax.annotate()`; `ax.bar_label()`; `plt.text()` |
| Annotate | Add explanatory text, lines, or markers at specific locations | Atomic | `ax.annotate()`; `ax.axvline()`; `ax.text()` |
| Magnify | Zoom into a region to expose fine-grained differences | Compound | `ax.inset_axes()`; `ax.indicate_inset_zoom()`; manual `ax.set_xlim()` |
| Calibrate | Adjust encoding parameters for accuracy | Abstract | Design decision; no single tool equivalent |
| Assign | Attach titles, labels, colors, or other attributes to elements | Abstract | Too broad; could be `ax.set_title()`, `hue=`, `s=`, or `marker=` |
| Customize | Modify visual properties such as color, size, or layout | Abstract | Too broad; encompasses many `matplotlib` / `seaborn` style parameters |
| Map (visual) | Bind a data variable to a visual channel (position, color, size, shape, opacity) | Atomic | `sns.scatterplot(x=, y=, hue=, size=, style=)`; `plt.scatter(c=, s=)` — *Added from 53 Visualization Vocabulary.ipynb* |
| Draw | Instantiate a geometric mark type (point, bar, line, area) | Atomic | `sns.scatterplot()`; `sns.barplot()`; `sns.lineplot()`; `plt.bar()`; `plt.plot()` — *Added from 53 Visualization Vocabulary.ipynb* |
| Style | Set the aesthetic properties of marks — line dash, marker shape, opacity | Atomic | `linestyle='--'`; `marker='o'`; `alpha=0.5`; `style=` kwarg in seaborn |
| Legend | Place and configure the chart legend | Atomic | `ax.legend(loc=, title=)`; `ax.get_legend().remove()`; `plt.legend(handles=, labels=)` |

---

## 13. Communication & Narrative

*Most terms in this category are Abstract or Meta — they describe design goals and rhetorical intent, not executable operations.*

| Term             | Definition                                                  | Level    | Tools                                                                 |
| ---------------- | ----------------------------------------------------------- | -------- | --------------------------------------------------------------------- |
| Simplify         | Reduce a visualization to a single clear message            | Abstract | Design decision; no tool equivalent                                   |
| Communicate      | Present information clearly to the intended audience        | Meta     | No tool equivalent                                                    |
| Narrate          | Guide the viewer through a sequence of insights             | Meta     | Jupyter notebook structure; `plotly` animation; but mostly rhetorical |
| Engage           | Use design choices to capture the audience's attention      | Abstract | Design decision                                                       |
| Familiarize      | Choose a chart form the audience already knows how to read  | Abstract | Design decision                                                       |
| Frame            | Set context so the viewer interprets the chart correctly    | Abstract | `ax.set_title()`; `plt.suptitle()`; but primarily a design decision   |
| Emphasize        | Direct the viewer's attention to the most important element | Compound | `ax.annotate()` with arrow; contrasting color; `fontweight='bold'`    |
| Demystify        | Make complex or unfamiliar data accessible                  | Abstract | Design decision                                                       |
| Clarify          | Remove ambiguity from a visual representation               | Abstract | Design decision                                                       |
| Direct           | Guide the viewer's eye toward a specific element            | Abstract | Realized through annotation, color, or arrows                         |
| Illustrate       | Use a visual to make an abstract concept concrete           | Abstract | Design decision                                                       |
| Substantiate     | Provide visual evidence to support a claim                  | Abstract | Design decision                                                       |
| Captions         | Add descriptive text to clarify what a chart shows          | Atomic   | `ax.set_title()`; `plt.figtext()`; `plt.suptitle()`                   |
| Convey a Message | Ensure the chart communicates its intended takeaway         | Meta     | No tool equivalent                                                    |
| Tangible         | Make data perceptible and meaningful for an audience        | Abstract | Design decision                                                       |
| Display          | Present data in a visual form                               | Abstract | Essentially every plotting call; too broad to map to one tool         |
| Encompassing     | Capture as many relevant facets of the data as possible     | Abstract | Design decision                                                       |

---

## 14. Exploration & Inference

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Identify | Recognize the type, pattern, or entity of interest | Abstract | Pattern-specific; could be `df.info()`, `df.describe()`, or domain logic |
| Monitor | Track key metrics over time for ongoing awareness | Compound | Repeated `df.groupby()` + `sns.lineplot()`; dashboard tools like `plotly Dash` |
| Interpolate | Predict values at positions between known data points using a model | Atomic | `numpy.interp()`; `scipy.interpolate.interp1d()`; `sklearn` regression predictions — for gap-filling in a DataFrame see Data Preparation |
| Ideate | Generate hypotheses or questions about the data | Meta | No tool equivalent |
| Develop | Build understanding iteratively through exploration | Meta | No tool equivalent |
| Solve | Use a visualization to answer a specific analytical question | Meta | No tool equivalent |

---

## 15. Analyst Process (Clinical Analogy)

*All terms are Meta-level — they describe the analyst's epistemic stance and role, not operations on data.*

| Term | Definition | Level | Tools |
|------|-----------|-------|-------|
| Diagnosed | Identified the root problem or anomaly in the data | Meta | No tool equivalent |
| Prescribed | Recommended a course of action based on the data | Meta | No tool equivalent |
| Assessed | Evaluated the data against a standard or expectation | Meta | No tool equivalent |
| Adapted | Modified the approach in response to what the data revealed | Meta | No tool equivalent |
| Maintained | Kept a metric stable or within acceptable bounds | Meta | No tool equivalent |
| Suggested | Proposed an interpretation based on the data | Meta | No tool equivalent |
| Revealed | Made a hidden pattern or insight visible | Meta | No tool equivalent |
| Showcases | Presents highlights of the data prominently | Meta | No tool equivalent |
| Relayed | Communicated findings to another party | Meta | No tool equivalent |
| Elicits | Draws a response or insight from the viewer | Meta | No tool equivalent |

---

## Summary

| Level    | Count | Notes                                                                   |
| -------- | ----: | ----------------------------------------------------------------------- |
| Atomic   |    62 | Directly executable; clear tool mapping                                 |
| Compound |    11 | Require a pipeline of 2–4 atomic steps                                  |
| Abstract |    34 | Describe goals or design decisions; must be decomposed before coding    |
| Meta     |    16 | Describe analyst role or rhetorical intent; outside tool scope entirely |

Seven terms were added from *53 Visualization Vocabulary.ipynb* (marked in their rows): Declare, Select, Retrieve Value (also from Amar et al. 2005), Transform (Statistical), Layer, Map (visual), and Draw. Eleven further terms were added by editorial assessment: Impute, Interpolate (data-level), Sample, Encode, Bin, Reduce (Data Preparation); Smooth, Resample, Decompose (Temporal Analysis); Style, Legend (Visual Encoding).

Several recurring coherence issues appear across categories:
- **Overlap**: Trace / Track; Correlate / Co-vary / Relate; Show Proportion / Apportion / Compose; Estimate / Approximate; Isolate / Trim / Eliminate all cover essentially the same ground.
- **Over-broad terms**: Transform, Distribute, Display, Customize, and Assign are placeholders for entire categories, not discrete operations.
- **False atomics**: Characterize Distribution and Find Anomalies feel atomic in intent but require multiple function calls in practice.
- 
| Level | Mutate | Compute | Analyze | Compose | Communicate |
| --- | --- | --- | --- | --- | --- |
| **Meta** | | | | | Ideate · Develop · Solve · Communicate · Narrate · Convey a Message · Diagnose · Prescribe · Assess · Adapt · Maintain · Suggest · Reveal · Showcase · Relay · Elicit |
| **Abstract** | Transform · Condense · Focus · Specify | Quantify · Estimate · Approximate · Compose | Distribute · Compare · Contrast · Differentiate · Define Precision · Relate · Trends · Progressing | Concentration · Expand · Calibrate · Assign · Customize · Display | Identify · Simplify · Engage · Familiarize · Frame · Demystify · Clarify · Direct · Illustrate · Substantiate · Tangible · Encompassing |
| **Compound** | Clean | Summarize · Show Partition | Characterize Distribution · Categorical Relationship · Find Anomalies · Forecast | Magnify | Emphasize · Monitor |
| **Atomic** | Normalize · Sort · Combine · Reshape · Deduplicate · Transpose · Map · Declare · Impute · Interpolate · Sample · Encode · Bin · Reduce · Isolate · Slice · Trim · Select · Retrieve Value · Rank · Reorder | Aggregate · Compute Derived Value · Apply linear regression · Transform (Statistical) · Show Proportion · Show Volume · Apportion | Determine Range · Juxtapose · Align · Categorize · Connect · Cluster · Correlate · Co-vary · Find Extremum · Eliminate · Track · Trace · Accumulate · Smooth · Resample · Decompose | Subplot · Localize · Widen · Zoom · Rotate · Autosize · Size Proportionally · Layer · Color · Recolor · Gradient · Weight · Scale · Label · Annotate · Map (visual) · Draw · Style · Legend | Captions · Interpolate |

- Mutate — Data Preparation, Filtering & Selection, Ordering & Ranking
- Compute — Summarization & Aggregation, Part-Whole Decomposition
- Analyze — Distribution & Shape, Comparison, Relationship & Correlation, Anomaly & Extremum Detection, Temporal Analysis
- Compose — Visual Layout, Visual Encoding
- Communicate — Communication & Narrative, Exploration & Inference, Analyst Process