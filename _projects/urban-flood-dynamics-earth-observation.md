---
title: Two decades of urban flood dynamics from Earth observation
short_title: Two decades of urban flood dynamics
description: How land-cover change in Kuala Lumpur between 2000 and 2020 shifted flood susceptibility, modelled with machine learning on satellite-derived data and explained with SHAP.
summary: How two decades of urban growth in Kuala Lumpur changed where floods are most likely, from satellite data and explainable machine learning.
featured: true
order: 2
theme: earth-observation
status: Published
period: Published 2025
image: /assets/img/projects/urban-flood-dynamics-earth-observation.jpg
image_alt: Two land-cover maps of Kuala Lumpur for 2000 and 2020, showing impervious surfaces in red expanding at the expense of vegetation in green.
image_credit: Land cover in Kuala Lumpur, 2000 (left) and 2020 (right). Figure from Tella et al. (2025), Earth Systems and Environment. © King Abdulaziz University and Springer Nature Switzerland AG 2025, reproduced by the author.
image_source: https://doi.org/10.1007/s41748-025-00878-7
results:
  - "Random forest reached 96% accuracy for 2000 and 94% for 2020; logistic regression reached 93% and 89% and tended to under-predict risk zones."
  - "Impervious surfaces were the dominant factor associated with high flood susceptibility, followed by NDVI. Urban growth and vegetation loss coincided with the high-susceptibility zones in both years."
  - "SHAP showed that the influence of elevation, NDVI and drainage density shifted between the two decades."
  - "A new threshold-based MNDWI method improved the detection of surface water and flood points, and can be applied to other cities."
tech: [Google Earth Engine, Multi-temporal satellite imagery, Land-cover classification, Random forest, Logistic regression, SHAP, MNDWI]
publications: [J14]
related: [explainable-geoai-flood-susceptibility]
---

Most flood studies look at a single point in time, while cities keep changing. This work compares flood susceptibility in Kuala Lumpur in 2000 and 2020, using land cover derived from two decades of satellite imagery in Google Earth Engine together with climate, terrain and hydrological variables. Random forest and logistic regression model the flood-prone areas for each year, and SHAP explains how the drivers changed as the city grew. The results point to controlling impervious surfaces and protecting vegetation as practical levers for reducing flood risk.
