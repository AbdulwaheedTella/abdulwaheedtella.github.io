---
title: Air quality modelling in Malaysia with machine learning and GIS
description: Machine-learning, geostatistical and regression models of PM10 and ozone in Malaysia and their climatic drivers, from my master's research.
summary: Predicts and maps PM10 and ozone across Malaysia with machine learning, geostatistics and regression, and analyses their climatic drivers.
featured: false
order: 6
theme: air-quality
status: Published
period: 2019 to 2021
role: Researcher (MSc thesis and graduate research assistant)
problem: Air-quality monitoring stations are sparse, and pollutant levels depend on weather and season. Decision-makers need spatial predictions and to know what drives them.
tech: [Python, XGBoost, Random forest, K-nearest neighbours, Naïve Bayes, Support vector regression, Kriging, IDW, Multivariate regression, GIS]
contribution: Compared machine-learning and geostatistical models for spatial PM10 prediction, and quantified how climatic variables and seasonality influence PM10 and ozone.
outcome: Four Q1 journal articles published during the assistantship, plus conference papers. Awarded a Graduate Research Scholarship and a full conference travel grant.
pipeline:
  - { label: Station data, detail: "PM10, ozone, climate variables" }
  - { label: Models, detail: "ML, kriging, IDW, regression" }
  - { label: Spatial prediction, detail: "PM10 maps, hotspots" }
  - { label: Drivers, detail: "Climate and season effects" }
publications: [J7, J6, J5, J4, C5, J3]
related: [spatial-decision-support-mcdm]
links:
  - { label: "Paper: Chemosphere (2022)", url: "https://doi.org/10.1016/j.chemosphere.2022.134250" }
  - { label: "Paper: Environmental Science and Pollution Research (2021)", url: "https://doi.org/10.1007/s11356-021-16150-0" }
---

## Context

My master's thesis, _Air Pollution Modelling in Malaysia using GIS and Machine Learning_, was carried out in the Geospatial Analysis and Modelling (GAM) research group at Universiti Teknologi PETRONAS.

## Approach

- **Spatial PM10 prediction.** Models including XGBoost, random forest, naïve Bayes, K-nearest neighbours and support vector regression were compared for predicting PM10 over Selangor and other Malaysian cities, with hotspots mapped.
- **Geostatistics.** Kriging and inverse-distance weighting were used alongside multivariate regression for spatiotemporal air-quality modelling.
- **Climatic drivers.** Correlation analysis with random forest, decision-tree regression, linear regression and support vector regression showed how climatic variables influence ozone, and multivariate regression with GIS did the same for PM10 and seasonal variation.
- **Climate and pollution.** I developed predictive models for how climate change affects air-pollution concentrations.
