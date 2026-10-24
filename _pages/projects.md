---
layout: site
permalink: /projects/
title: Projects
nav: true
nav_order: 3
eyebrow: Selected work
heading: Projects and case studies
lede: Research and applied projects in GeoAI, Earth observation and decision support. Each page summarises the work, its key results, and the publications, code and data behind it.
description: Selected GeoAI, Earth observation and decision-support projects by Abdulwaheed Tella, with problem, role, methods and outcomes.
---

{% assign projects = site.projects | sort: 'order' %}

<div class="site-grid">
  {% for pr in projects %}{% include site/project-card.liquid project=pr %}{% endfor %}
</div>

<section class="site-section" id="code" aria-labelledby="code-h">
  <h2 id="code-h" class="site-h2">Research code and data</h2>
  <p class="site-note">Archived on Zenodo with citable DOIs, so results can be reproduced and reused.</p>
  {% include site/software-list.liquid %}
</section>

<section class="site-section" aria-labelledby="gh-h">
  <div class="site-section-head">
    <h2 id="gh-h" class="site-h2">Code on GitHub</h2>
    <a href="{{ site.data.repositories.profile }}" rel="noopener">github.com/{{ site.data.socials.github_username }} <span class="sr-only">(opens external site)</span></a>
  </div>
  {% include site/repo-list.liquid %}
</section>
