---
title: Consolidated Student Visualization Vocabulary
subtitle: DS 2023 | Communicating with Data
---
## Overview
- This vocabulary was co-created by the students of UVA DS 2023 in Fall 2026. 💪
- Terms were proposed by 13 student groups for Week 10 Participation 2 (2026-10-28).
- Terms were converted into verbs in their imperative forms.
- The raw list of student terms was deduplicated and grouped by intent.
- Count = number of distinct groups that used the term or a close synonym (some noted in parentheses).


## 1. Data Preparation
*Cleaning, reshaping, and transforming raw data before analysis or visualization.

| Term        | Count | Definition                                                                          | Synonyms          |
| ----------- | ----: | ----------------------------------------------------------------------------------- | ----------------- |
| Normalize   |     3 | Apply a consistent scale or form across variables to enable valid comparison        | Standardize       |
| Transform   |     3 | Convert data to a new representation or scale to reveal patterns or enable analysis |                   |
| Sort        |     3 | Order observations by the value of a variable                                       |                   |
| Clean       |     1 | Remove errors, blanks, and inconsistencies to make data ready for analysis          |                   |
| Condense    |     1 | Reduce the size or complexity of a dataset for efficiency                           |                   |
| Combine     |     1 | Merge two or more datasets or views into one                                        |                   |
| Reshape     |     1 | Restructure data between long (tidy) and wide formats                               | Tidy              |
| Deduplicate |     1 | Eliminate repeated records from a dataset                                           | Remove Duplicates |
| Transpose   |     1 | Swap rows and columns in a tabular structure                                        |                   |
| Map         |     1 | Assign raw values to categories, bins, or identifiers                               |                   |

## 2. Summarization & Aggregation
*Computing summary values, counts, and derived metrics from a set of observations.*

| Term                    | Count | Definition                                                                                   | Synonyms                |
| ----------------------- | ----: | -------------------------------------------------------------------------------------------- | ----------------------- |
| Aggregate               |     5 | Compute a summary value — sum, count, mean, or other function — over a group of observations |                         |
| Summarize               |     3 | Extract key numbers that represent a specific aspect of the data                             |                         |
| Compute Derived Value   |     2 | Calculate a new variable from existing ones, creating a higher-level metric                  | Measurement Abstraction |
| Quantify                |     1 | Express a qualitative pattern as a numeric value                                             |                         |
| Estimate                |     1 | Approximate a value without exact computation                                                |                         |
| Approximate             |     1 | Provide a close but imprecise numeric representation                                         |                         |
| Apply linear regression |     1 | Fit a line to quantify the direction and strength of a trend between two variables           |                         |

## 3. Distribution & Shape
*Characterizing how values are spread across observations.*

| Term                      | Count | Definition                                                                                                    | Synonyms     |
| ------------------------- | ----: | ------------------------------------------------------------------------------------------------------------- | ------------ |
| Characterize Distribution |     4 | Describe the spread, modality, skew, and overall form of a variable's values                                  | Reveal Shape |
| Determine Range           |     3 | Identify the minimum and maximum values of a variable; for categorical variables, enumerate all unique values |              |
| Distribute                |     1 | Show how values are spread across observations or space                                                       |              |

## 4. Ordering & Ranking
*Sorting and prioritizing observations by the value of a variable.*

| Term    | Count | Definition                                                            | Synonyms |
| ------- | ----: | --------------------------------------------------------------------- | -------- |
| Rank    |     2 | Assign a relative position to each observation based on a variable    |          |
| Reorder |     1 | Change the sequence of categories or observations to reveal a pattern |          |

## 5. Comparison
*Evaluating differences between groups, observations, or variables.*

| Term             | Count | Definition                                                                 | Synonyms         |
| ---------------- | ----: | -------------------------------------------------------------------------- | ---------------- |
| Compare          |     7 | Evaluate differences between two or more categories, groups, or variables. |                  |
| Contrast         |     5 | Highlight the degree of difference between two values or groups.           |                  |
| Juxtapose        |     2 | Place two views side by side to make differences immediately visible.      |                  |
| Align            |     2 | Arrange marks so that differences in size are easy to judge.               | Align Magnitudes |
| Categorize       |     2 | Group observations into discrete classes for comparison.                   | Classify         |
| Differentiate    |     1 | Identify the specific features that distinguish one group from another.    |                  |
| Define Precision |     1 | Represent values with enough accuracy to support meaningful comparison.    |                  |

## 6. Part-Whole Decomposition
*Showing how subgroups or components contribute to a total.*

| Term            | Count | Definition                                                 | Synonyms                           |
| --------------- | ----: | ---------------------------------------------------------- | ---------------------------------- |
| Show Proportion |     2 | Express the relative size of parts within a whole.         | Ratio, Percent, Parts of the Whole |
| Show Partition  |     2 | Divide a total into mutually exclusive parts.              | Partition a Whole                  |
| Compose         |     2 | Show how a whole is made up of its components.             |                                    |
| Show Volume     |     2 | Represent the cumulative or total magnitude of a quantity. |                                    |
| Apportion       |     1 | Allocate a total into proportional shares.                 |                                    |

## 7. Relationship & Correlation
*Finding associations, co-variation, and structural connections across variables or entities.*

| Term                     | Count | Definition                                                               | Synonyms |
| ------------------------ | ----: | ------------------------------------------------------------------------ | -------- |
| Connect                  |     3 | Reveal relationships between distinct entities using edges or flows      | Link     |
| Cluster                  |     3 | Group observations that are similar across one or more variables         |          |
| Correlate                |     2 | Determine whether and how two variables move together                    |          |
| Categorical Relationship |     1 | Show how membership in one category co-occurs with membership in another |          |
| Co-variance              |     1 | Observe how two variables change together                                |          |
| Relate                   |     1 | Show the association between two variables                               |          |
| Trends                   |     1 | Identify a directional pattern across a variable or over time            |          |

## 8. Temporal Analysis
*Tracking change through time or other ordered sequences.*

| Term              | Count | Definition                                                         | Synonyms |
| ----------------- | ----: | ------------------------------------------------------------------ | -------- |
| Track             |     3 | Follow a value through an ordered sequence. Show change over time. |          |
| Trace             |     3 | Follow continuous change through time.                             |          |
| Show Accumulation |     3 | Show quantities building up cumulatively over time.                |          |
| Forecast          |     2 | Visualize predicted future values based on current trends          |          |
| Show Progress     |     1 | Show how a value changes across a time dimension                   |          |

## 9. Anomaly & Extremum Detection
*Identifying outliers, exceptions, and extreme values.*

| Term           | Count | Definition                                                                | Synonyms      |
| -------------- | ----: | ------------------------------------------------------------------------- | ------------- |
| Find Extremum  |     2 | Identify the observations with the highest or lowest values of a variable | Find Extremes |
| Find Anomalies |     2 | Identify observations with unexpected or exceptional values               |               |
| Eliminate      |     1 | Remove or flag outliers or values that distort the analysis               |               |

## 10. Filtering & Selection
*Narrowing data to a specific subset of observations.*

| Term    | Count | Definition                                                      | Synonyms |
| ------- | ----: | --------------------------------------------------------------- | -------- |
| Filter  |     1 | Narrow the data to observations satisfying specific conditions  | Isolate  |
| Focus   |     1 | Direct attention to a specific subset of the data               |          |
| Slice   |     1 | Select a cross-section of the data on one or more dimensions    |          |
| Trim    |     1 | Remove peripheral or irrelevant observations or visual elements |          |
| Specify |     1 | Define conditions that constrain which observations are shown   |          |


## 11. Visual Layout
*Arranging visual elements in space to support reading and comparison.*

| Term                | Count | Definition                                                     | Synonyms  |
| ------------------- | ----: | -------------------------------------------------------------- | --------- |
| Subplot             |     1 | Place multiple chart panels side by side for comparison        | Juxtapose |
| Concentration       |     1 | Show the density or clustering of values in a spatial area     |           |
| Localize            |     1 | Position data in geographic or spatial context                 | Situate   |
| Widen               |     1 | Expand the visible range of an axis or view                    |           |
| Expand              |     1 | Broaden the scope or extent of a visualization                 |           |
| Zoom                |     1 | Narrow the visible range to magnify a region of interest       |           |
| Rotate              |     1 | Change the orientation of a chart or axis                      |           |
| Autosize            |     1 | Scale a visualization automatically to fit its display context |           |
| Size Proportionally |     1 | Scale visual marks in direct proportion to data values         |           |

## 12. Visual Encoding
*Mapping data values to visual properties such as color, size, and position.*

| Term           | Count | Definition                                                                 | Synonyms |
| -------------- | ----: | -------------------------------------------------------------------------- | -------- |
| Color          |     1 | Use a colormap to encode a third variable across a chart                   |          |
| Recolor        |     1 | Change the color mapping of an existing visualization                      |          |
| Apply Gradient |     1 | Use a continuous color scale to encode magnitude                           |          |
| Weight         |     1 | Encode a variable through the thickness or visual prominence of a mark     |          |
| Scale          |     1 | Adjust the axis range or unit to reveal relevant variation                 |          |
| Label          |     1 | Attach text identifiers to individual data elements                        |          |
| Annotate       |     1 | Add explanatory text, lines, or markers at specific locations              |          |
| Magnify        |     1 | Zoom in on a region to expose fine-grained differences                     |          |
| Calibrate      |     1 | Adjust encoding parameters to accurately represent the data                |          |
| Assign         |     1 | Attach titles, labels, colors, or other visual attributes to data elements |          |
| Customize      |     1 | Modify visual properties such as color, size, or layout                    |          |

## 13. Communication & Narrative
*Conveying meaning, context, and story to the viewer.*

| Term             | Count | Definition                                                           | Synonyms |
| ---------------- | ----: | -------------------------------------------------------------------- | -------- |
| Simplify :star:  |     6 | Reduce a visualization to a single clear message                     |          |
| Communicate      |     1 | Present information in a form that is clear to the intended audience |          |
| Narrate          |     1 | Guide the viewer through a sequence of insights                      |          |
| Engage           |     1 | Use design choices to capture the audience's attention               |          |
| Familiarize      |     1 | Choose a chart form the audience already knows how to read           |          |
| Frame            |     1 | Set context so the viewer interprets the chart correctly             |          |
| Emphasize        |     1 | Direct the viewer's attention to the most important element          |          |
| Demystify        |     1 | Make complex or unfamiliar data accessible                           |          |
| Clarify          |     1 | Remove ambiguity from a visual representation                        |          |
| Direct           |     1 | Guide the viewer's eye toward a specific element                     |          |
| Illustrate       |     1 | Use a visual to make an abstract concept concrete                    |          |
| Substantiate     |     1 | Provide visual evidence to support a claim                           |          |
| Captions         |     1 | Add descriptive text to clarify what a chart shows                   |          |
| Convey a Message |     1 | Ensure the chart communicates its intended takeaway                  |          |
| Make Tangible    |     1 | Make data perceptible and meaningful for an audience                 |          |
| Display          |     1 | Present data in a visual form                                        |          |
| Encompass        |     1 | Capture as many relevant facets of the data as possible in one view  |          |

## 14. Exploration & Inference
*Open-ended investigation, hypothesis formation, and prediction.*

| Term        | Count | Definition                                                     | Synonyms |
| ----------- | ----: | -------------------------------------------------------------- | -------- |
| Identify    |     1 | Recognize the type, pattern, or entity of interest in the data |          |
| Monitor     |     1 | Track key metrics over time for ongoing situational awareness  |          |
| Interpolate |     1 | Predict values at positions between known data points          |          |
| Ideate      |     1 | Generate hypotheses or questions about the data                |          |
| Develop     |     1 | Build understanding iteratively through repeated exploration   |          |
| Solve       |     1 | Use a visualization to answer a specific analytical question   |          |

## 15. Analyst Process (Clinical Analogy)
*Terms from the Fútbol Americano group, borrowing medical vocabulary to describe the data analyst's role.*

| Term      | Count | Definition                                                  | Synonyms |
| --------- | ----: | ----------------------------------------------------------- | -------- |
| Diagnose  |     1 | Identified the root problem or anomaly in the data          |          |
| Prescribe |     1 | Recommended a course of action based on the data            |          |
| Assess    |     1 | Evaluated the data against a standard or expectation        |          |
| Adapt     |     1 | Modified the approach in response to what the data revealed |          |
| Maintain  |     1 | Kept a metric stable or within acceptable bounds            |          |
| Suggest   |     1 | Proposed an interpretation based on the data                |          |
| Reveal    |     1 | Made a hidden pattern or insight visible                    |          |
| Showcase  |     1 | Presents highlights of the data prominently                 |          |
| Relay     |     1 | Communicated findings to another party                      |          |
| Elicit    |     1 | Draws a response or insight from the viewer                 |          |
