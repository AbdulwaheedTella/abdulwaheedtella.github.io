---
title: Reliable GeoAI with the area of applicability
description: Testing where machine-learning flood susceptibility predictions can be trusted, using the area of applicability to flag predictions made outside the conditions a model was trained on.
summary: Identifies the feature-space and geographic conditions under which flood susceptibility predictions become unreliable, so maps can show where not to trust them.
featured: true
order: 2
theme: explainable-and-reliable-ai
status: Manuscripts under review
period: 2025 to 2026
role: Researcher (visiting research associate, Curtin University)
problem: A model trained in one place is often applied in another. Without a check on transferability, predictions in unfamiliar conditions look just as confident as those in familiar ones.
tech: [Ensemble and hybrid machine learning, Area of applicability (AoA), Uncertainty analysis, Python]
contribution: An area-of-applicability framework for ensemble flood susceptibility models that marks where predictions should not be trusted, in a rapidly urbanising city.
outcome: Two manuscripts are under review (Geo-spatial Information Science; Applied Water Science). A critical review of validation practice is under review at Environmental Science and Policy. No published results yet.
pipeline:
  - { label: Train, detail: "Ensemble and hybrid ML models" }
  - { label: Compare, detail: "Does added complexity help?" }
  - { label: Applicability, detail: "Feature-space and geographic limits" }
  - { label: Map, detail: "Susceptibility with reliability flagged" }
in_progress:
  - "Toward Reliable GeoAI for Flood Susceptibility Mapping: Integrating Machine Learning with the Area of Applicability in a Rapidly Urbanising City (Geo-spatial Information Science, under review)"
  - "Does Ensemble Complexity Improve Urban Flood Susceptibility Mapping? Statistical Evidence from Ensemble and Hybrid Machine Learning Models (Applied Water Science, under review)"
  - "Machine Learning for Flood Susceptibility Mapping: A Critical Review of Validation Practice and Operational Readiness (Environmental Science and Policy, under review)"
related: [explainable-geoai-flood-susceptibility]
---

## Context

This work grew out of a research placement at Curtin University's School of Design and Environment. The question is about transferability: machine-learning susceptibility maps are trained on the data that happen to be available, then used across a whole city. Some of those locations can look very different from the training data.

## Approach

- **Model reliability first.** Instead of treating accuracy as the end point, the study asks where predictions are likely to fail and how to improve their spatial validity.
- **Area of applicability.** The feature-space and geographic conditions under which a model's predictions are reliable are identified, so the final map can separate trusted predictions from extrapolations.
- **Is complexity worth it?** A companion study tests, with statistical evidence, whether ensemble and hybrid models genuinely improve urban flood susceptibility mapping over simpler ones.
- **Operational readiness.** A critical review examines how validation is done in the flood susceptibility literature and whether it supports operational use.

## Status

All three outputs are under review, so this page deliberately reports no results. It will be updated with the papers when they are accepted.
