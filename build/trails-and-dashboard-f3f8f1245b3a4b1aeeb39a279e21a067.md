---
title: Actions, Trails, and Dashboard Design
subtitle: DS 2023 | Communicating with Data
---

## Overview

This notebook describes how to convert our insights about actions and trails into the design of dashboards and other compositional data visualizations. 

## The Translation Rules

The key insight is that **the levels we used to classify the intent of an action translate into specific kinds of visual elements**. 

Each action type has a direct dashboard counterpart determined by its level:

| Level | Verb type | Dashboard element | Examples |
| --- | --- | --- | --- |
| Meta | Goal / interpretation | Title or insight callout | *Ideate*, *Communicate* |
| Abstract | Design intent | Layout directive (sets grouping variable) | *Compare*, *Contrast* |
| Compound | Multi-step view | Panel (chart) | *Characterize Distribution*, *Find Anomalies* |
| Atomic | Filter / select | Widget | *Filter*, *Select*, *Bin* |
| Atomic | Transform | Backend process | *Normalize*, *Aggregate*, *Reduce* |

Given this mapping, we can represent a trail as movement through both steps and levels:

| Trail step | Dashboard element |
| --- | --- |
| Meta (start) | Dashboard **title** — the question the dashboard answers |
| Atomic *filter* (Filter, Select, Bin) | **Widget** — slider, checkbox, dropdown |
| Atomic *transform* (Normalize, Aggregate, Reduce) | **Backend process** — runs when a widget fires |
| Abstract (Compare, Contrast) | **Layout directive** — signals that the next panel needs a grouping variable |
| Compound | **Panel** — a chart the user reads |
| Meta (end) | **Insight callout** — an annotation overlay or text block |

![](trail-chart.png)

The Abstract level is the interesting case.

It does not generate a panel or widget on its own — it is resolved by the Compound step below it.

But it signals that the Compound step needs a grouping variable, which was set by an earlier Atomic filter step.

That dependency is what links the widget to the panel.

## The Trail Sequence Is the Layout Order

The syntagmatic axis (x) gives you the reading order of the dashboard.
Upstream steps set context for downstream steps:

- Widgets that control data (Atomic filter steps) should appear **above or before** the panels that consume that data.
- The dependency structure of the trail — which step's output feeds which later step — is the wiring diagram of the dashboard's interactivity.

If step 3 (Bin) produces the `tier` variable used by step 7 (Characterize Distribution),
the tier checkbox widget belongs above the box plot panel.
The trail makes that dependency explicit; the dashboard layout follows from it.

![](dashboard-wireframe.png)

## Oscillation and Interaction Depth

- **High oscillation** (many Abstract/Meta steps, frequent level changes) — the analyst did not know in advance which variables to show. The dashboard must be correspondingly exploratory: more dropdowns, variable selectors, linked views.
- **Flat** (mostly Atomic, no Abstract steps) — the analyst had a specific method in mind and executed it in sequence. The dashboard can be **prescriptive**: a fixed sequence of panels that walks the user through the argument.

Trail 1 (*quality prediction*) oscillates — it needs a flexible dashboard with variable selectors.
Trail 2 (*red vs. white*) is flat — its dashboard is more like a scrollable report,
where the sequence of panels is the argument.

## The Pedagogical Sequence

Teach it in three moves:

**Move 1 — Read the trail for element type.**
Ask students: *which steps produce something the user SEES (panels) versus something the user CONTROLS (widgets)?*
This forces them to classify each step as display vs. input, which is the core dashboard design distinction.

**Move 2 — Read the trail for dependencies.**
Ask: *if step 7 depends on step 3's output, where should the step-3 widget appear relative to the step-7 panel?*
This teaches them that widget placement is logical, derived from data flow, not aesthetic.

**Move 3 — Read the oscillation for interaction depth.**
Ask: *what does the shape of this trail tell you about how much freedom the dashboard user needs?*
This connects the analytic process (exploratory vs. confirmatory) to the design decision (interactive vs. prescriptive).

## The Payoff

The trail notation gives students a **vocabulary for justifying design decisions** rather than just making them.

Instead of "I put a dropdown here because it seemed right," they can say
"I put a dropdown here because step 3 is an Atomic filter that feeds step 7,
and the user needs to control which tier they're comparing."

The trail is the paper trail for the design.
