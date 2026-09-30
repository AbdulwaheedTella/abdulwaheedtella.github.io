---
layout: site
permalink: /about/
title: About
nav: true
nav_order: 1
eyebrow: About
heading: Research with an eye on decisions
lede: I build and test geospatial machine-learning models, and I care whether people can understand and trust what they produce.
description: Background of Abdulwaheed Tella, a GeoAI researcher and PhD candidate at Monash University Malaysia working on explainable machine learning, Earth observation, flood risk and urban heat.
---

{% assign p = site.data.profile %}

<div class="site-split">
  <div class="site-prose">
    {% for para in p.about %}
      <p>{{ para }}</p>
    {% endfor %}

    <h2>Currently</h2>
    <ul>
      {% for c in p.current_focus %}<li>{{ c }}</li>{% endfor %}
    </ul>

  </div>
  <aside class="site-aside" aria-label="At a glance">
    <img src="{{ p.photo | relative_url }}" alt="{{ p.photo_alt }}" width="322" height="279" loading="lazy">
    <h2 class="site-h3">At a glance</h2>
    <ul class="site-plain-list">
      {% for r in p.current_roles %}<li>{{ r }}</li>{% endfor %}
    </ul>
    <h2 class="site-h3">Education</h2>
    <ul class="site-plain-list">
      {% for e in site.data.education %}<li><strong>{{ e.degree }}</strong><br>{{ e.org }}, {{ e.dates }}</li>{% endfor %}
    </ul>
  </aside>
</div>

<section class="site-section" aria-labelledby="skills-h">
  <h2 id="skills-h" class="site-h2">Expertise</h2>
  <dl class="site-skills">
    {% for g in site.data.skills %}
      <div>
        <dt>{{ g.group }}</dt>
        <dd>{{ g.items | join: ', ' }}</dd>
      </div>
    {% endfor %}
  </dl>
  <p class="site-note">Every item above appears on my CV, in a paper, or in a project on this site.</p>
</section>

<section class="site-section" aria-labelledby="where-h">
  <h2 id="where-h" class="site-h2">Where industry, policy and academia meet</h2>
  <ul class="site-plain-list site-list-loose">
    <li><strong>Academia.</strong> PhD research, peer review for indexed journals, an editorial board role, teaching and supervision at two universities.</li>
    <li><strong>Applied and industry settings.</strong> Data analyst and geospatial analyst internships, an IBM Data Analyst certificate, and registration as a Professional Technologist (MBOT) and Geospatialist (IGRSM).</li>
    <li><strong>Policy.</strong> Principal Investigator on an APNIC Foundation fellowship on AI capability in ASEAN, and an expert panellist at an international higher-education policy dialogue.</li>
  </ul>
</section>
