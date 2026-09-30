---
title: Explainable GeoAI for flood susceptibility and urban exposure
description: Benchmarking machine-learning and deep-learning flood susceptibility models, explaining them with SHAP, LIME and Accumulated Local Effects, and linking hazard surfaces to what is exposed.
summary: Benchmarks machine-learning and deep-learning flood susceptibility models, explains their behaviour with SHAP, LIME and ALE, and links hazard surfaces to buildings, land use and population.
featured: true
order: 1
theme: explainable-and-reliable-ai
status: Published (2 journal articles)
period: 2023 to present
role: Lead author and modeller (PhD research)
problem: Flood susceptibility models are usually judged on accuracy alone. Planners also need to know why a model flags a place and what is actually exposed there.
tech: [Python, scikit-learn, TensorFlow and Keras, XGBoost, SHAP, LIME, Accumulated Local Effects, Google Earth Engine]
contribution: The first application of Accumulated Local Effects (ALE) to environmental susceptibility modelling, alongside SHAP and LIME, and an explainable framework that non-specialists can read.
outcome: Two Q1 journal articles. The Sustainable Development paper sits at rank 1 of 65 in the Web of Science Development Studies category.
pipeline:
  - { label: Multi-source data, detail: "Terrain, climate, land cover, infrastructure, population" }
  - { label: Model benchmark, detail: "ANN, CNN, DNN, random forest, XGBoost, SVR" }
  - { label: Explanation, detail: "SHAP, LIME, ALE" }
  - { label: Exposure, detail: "Buildings, land use, population" }
publications: [J16, J15]
related: [reliable-geoai-area-of-applicability, urban-flood-dynamics-earth-observation]
links:
  - { label: "Paper: Sustainable Development (2026)", url: "https://doi.org/10.1002/sd.7077" }
  - { label: "Paper: Water Resources Management (2026)", url: "https://doi.org/10.1007/s11269-025-04430-0" }
---

## Context

Machine-learning flood maps have become routine, but a high accuracy score says little about whether the model has learned something physically sensible, or whether a planner can defend a decision based on it. This project asks what each model is actually responding to, and what lies in the flooded areas it predicts.

## Approach

- **Integrated data.** Multi-source geospatial data covering terrain, climate, land cover, infrastructure and population were brought into a single modelling pipeline.
- **Benchmarked models.** ANN, CNN, DNN, random forest, XGBoost and support vector regression were compared for spatial prediction and validated against observed flood events, with predictive uncertainty measured.
- **Explained behaviour.** SHAP and LIME were used together with Accumulated Local Effects to show how individual predictors drive model output, including non-linear and reversing relationships that a single importance score hides.
- **Moved from hazard to exposure.** Predicted susceptibility surfaces were linked to buildings, land use and population so the result reports what is affected, not only where risk is high.

## Why ALE

Accumulated Local Effects are designed to stay reliable when predictors are correlated, as flood conditioning factors usually are. The ALE paper is the first application of the method to environmental susceptibility modelling.

## Outputs

The work is published in _Sustainable Development_ (exposure assessment framework) and _Water Resources Management_ (ALE for flood susceptibility). The code for this research is in a private repository at the moment.
