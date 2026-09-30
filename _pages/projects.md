---
layout: site
permalink: /projects/
title: Projects
nav: true
nav_order: 3
eyebrow: Selected work
heading: Projects and case studies
lede: A curated set of research and applied projects, each with the problem, my role, the methods and what came out of it. Open any project for the full case study.
description: Selected GeoAI, Earth observation and decision-support projects by Abdulwaheed Tella, with problem, role, methods and outcomes.
---

{% assign projects = site.projects | sort: 'order' %}

<div class="site-stack">
  {% for pr in projects %}{% include site/project-card.liquid project=pr detailed=true %}{% endfor %}
</div>

<section class="site-section" aria-labelledby="gh-h">
  <div class="site-section-head">
    <h2 id="gh-h" class="site-h2">Code on GitHub</h2>
    <a href="{{ site.data.repositories.profile }}" rel="noopener">github.com/{{ site.data.socials.github_username }} <span class="sr-only">(opens external site)</span></a>
  </div>
  {% include site/repo-list.liquid %}
</section>
