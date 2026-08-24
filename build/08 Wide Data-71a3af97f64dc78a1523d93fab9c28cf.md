---
title: Wide Data
type: lesson
publish: true
date: 2026-09-04
---
## Topics

- Wide data happens when you take a feature and project it's domain onto the column axis.
- Also called pivot, crosstab, and stacking
- Often accompanied by aggregation
- Rudimentary heatmaps with Pandas
- There are many definitions of wide data, which complicates things.
  - In brief, long data columns contain true variables, and wide data columns are the values associated with a variable (or combo)
  - Wide data is data in which the columns are the domain values of a category feature.
  - One tell is in how Pandas names the columns
- Another indication of long vs wide is the in the case of long data, you can imagine defining a table schema, whereas in the case of wide data, you would not.

Cover 

- pivot
- pivot_table
- stack and unstack
- melt and unmelt

Use `flights` data to demonstrate pivot()

Get an example where pivot_table() is needs

Thought:

- Indexes are always "wide" in the send that their uniqueness constitutes the project of a domain.