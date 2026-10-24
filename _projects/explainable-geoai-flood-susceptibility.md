---
title: Explainable GeoAI for flood susceptibility and urban exposure
short_title: Explainable GeoAI for flood risk
description: Explainable machine and deep learning that maps where Kuala Lumpur is most likely to flood, shows which factors drive the risk and at what thresholds, and links the result to exposed buildings.
summary: Explainable machine and deep learning that maps where Kuala Lumpur is most likely to flood, why, and what is exposed.
featured: true
order: 1
theme: explainable-and-reliable-ai
status: Published (2 journal articles)
period: 2023 to 2026
image: /assets/img/projects/explainable-geoai-flood-susceptibility.jpg
image_alt: Flood susceptibility map of Kuala Lumpur, with very high susceptibility in red along the river corridors and low susceptibility in green on higher ground.
image_credit: Flood susceptibility map of Kuala Lumpur. Figure from Tella et al. (2026), Sustainable Development, CC BY 4.0.
image_source: https://doi.org/10.1002/sd.7077
results:
  - "CatBoost performed best, with a cross-validation AUC of 0.975, an independent test AUC of 0.956, accuracy of 0.904 and a Brier score of 0.075."
  - "Ensemble models outperformed deep learning: XGBoost, LightGBM, random forest and Extra Trees reached test AUCs of 0.945 to 0.949, against 0.928 for the CNN and 0.927 for the DNN."
  - "Elevation below 50 m, NDVI below 0.15 and distance to rivers under 525 m mark the high-susceptibility zones."
  - "In the ALE study, random forest and XGBoost reached 94% accuracy and an AUC of 0.98, against 90% and 0.96 for logistic regression, and ALE exposed rainfall thresholds and non-linear effects the linear model missed."
tech: [Python, CatBoost, XGBoost, LightGBM, Random forest, CNN and DNN, SHAP, Accumulated Local Effects]
publications: [J16, J15]
related: [reliable-geoai-area-of-applicability, urban-flood-dynamics-earth-observation]
---

Machine-learning flood maps are often accurate but hard to trust or act on. This work builds an explainable GeoAI framework for Kuala Lumpur that compares five ensemble models and two deep-learning models on topographic, hydrological, climatic and anthropogenic predictors, then uses SHAP and Accumulated Local Effects (ALE) to show which factors drive flood susceptibility and at what thresholds. The susceptibility map is linked to buildings so the result shows what is exposed, not only where risk is high. It includes the first application of ALE to environmental susceptibility modelling, and the code is openly archived on Zenodo.
