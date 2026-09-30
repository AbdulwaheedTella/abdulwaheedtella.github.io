---
title: Two decades of urban flood dynamics from Earth observation
description: Using multi-temporal satellite imagery in Google Earth Engine to classify land cover over two decades and link the change statistically to shifting flood risk.
summary: Classifies two decades of land cover in Google Earth Engine and links land-cover change statistically to shifting flood risk with explainable GeoAI.
featured: true
order: 3
theme: earth-observation
status: Published
period: Published 2025
role: Lead author
problem: Cities change faster than hazard maps are updated. Quantifying how land-cover change has shifted flood risk needs consistent satellite records over long periods.
tech: [Google Earth Engine, Multi-temporal satellite imagery, Land-cover classification, Change detection, Explainable machine learning]
contribution: A workflow that goes from two decades of satellite imagery to classified land cover, quantified change and a statistical link between that change and flood risk.
outcome: Published in Earth Systems and Environment (Q1, 2025). A related earth-observation paper on land use in conflict-affected north-east Nigeria was published in Land Use Policy.
pipeline:
  - { label: Imagery, detail: "Multi-temporal satellite archive in GEE" }
  - { label: Classify, detail: "Land-cover maps per epoch" }
  - { label: Change, detail: "Quantify land-cover change" }
  - { label: Link to risk, detail: "Explainable GeoAI" }
publications: [J14, J13, BC2]
related: [explainable-geoai-flood-susceptibility]
links:
  - { label: "Paper: Earth Systems and Environment (2025)", url: "https://doi.org/10.1007/s41748-025-00878-7" }
  - { label: "Paper: Land Use Policy (2025)", url: "https://doi.org/10.1016/j.landusepol.2025.107673" }
---

## Context

Flood risk in a fast-growing city is a moving target. Sealed surfaces replace vegetation and drainage paths change, while most susceptibility maps are built for a single point in time. Long satellite records let the change be measured rather than assumed.

## Approach

- **Processed at scale.** Two decades of multi-temporal satellite imagery were processed in Google Earth Engine.
- **Classified and quantified.** Land cover was classified and the change between epochs quantified.
- **Linked change to risk.** The land-cover change was tied statistically to shifting environmental risk using an explainable GeoAI approach, keeping the link between cause and outcome visible.

## Related earth-observation work

- _Land Use Policy_ (2025) analyses land-use dynamics in armed-conflict hotspots in north-east Nigeria using earth observation data.
- A chapter in the Elsevier volume _Google Earth Engine and Artificial Intelligence for Earth Observation_ (2025) covers GEE and AI for the Sustainable Development Goals.
- I delivered a workshop on machine learning for flood susceptibility mapping in Google Earth Engine for Africans in Environmental Science (January 2026), and an international hands-on workshop on machine learning for environmental mapping in GEE.
