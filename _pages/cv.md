---
layout: site
permalink: /cv/
title: CV
nav: true
nav_order: 7
eyebrow: Curriculum vitae
heading: CV
lede: A web summary of the essentials. The full CV has the complete publication list, teaching record and referees.
description: Curriculum vitae of Abdulwaheed Tella, GeoAI researcher and PhD candidate at Monash University Malaysia, covering education, positions, publications, teaching, service and credentials.
---

{% assign p = site.data.profile %}
{% assign cvpath = p.cv_pdf | remove_first: '/' %}
{% capture cv_ready %}{% file_exists {{ cvpath }} %}{% endcapture %}

<p class="site-actions">
  {% if cv_ready == 'true' %}
    <a class="site-btn site-btn-primary" href="{{ p.cv_pdf | relative_url }}" download>Download CV (PDF)</a>
  {% else %}
    <a class="site-btn site-btn-primary" href="{{ '/contact/' | relative_url }}">Request the full CV</a>
  {% endif %}
  <a class="site-btn" href="{{ site.data.publications.scholar_url }}" rel="noopener">Google Scholar</a>
  <a class="site-btn" href="{{ site.data.publications.orcid_url }}" rel="noopener">ORCID</a>
</p>

<section class="site-section" aria-labelledby="sum-h">
  <h2 id="sum-h" class="site-h2">Summary</h2>
  <p class="site-prose site-prose-narrow">
    GeoAI researcher applying machine learning and deep learning to large-scale Earth observation data for environmental prediction and decision support.
    PhD candidate in Civil Engineering at Monash University Malaysia. Author of 16 peer-reviewed journal articles, 2 book chapters and 6 conference papers,
    with 1,000+ citations and an h-index of 13, the majority in Q1 journals. Teaching experience across three institutions, including two commendations for
    teaching excellence at Monash, and supervision of seven undergraduate research projects.
  </p>
</section>

<section class="site-section" aria-labelledby="edu-h">
  <h2 id="edu-h" class="site-h2">Education</h2>
  <ul class="site-rows">
    {% for e in site.data.education %}
      <li><strong>{{ e.degree }}</strong><span>{{ e.org }}</span><span class="site-muted">{{ e.dates }}</span><p>{{ e.detail }}</p></li>
    {% endfor %}
  </ul>
</section>

<section class="site-section" aria-labelledby="pos-h">
  <h2 id="pos-h" class="site-h2">Positions</h2>
  <ul class="site-rows">
    {% for x in site.data.experience.positions %}
      <li><strong>{{ x.role }}</strong><span>{{ x.org }}</span><span class="site-muted">{{ x.dates }}</span></li>
    {% endfor %}
  </ul>
  <p class="site-more"><a href="{{ '/experience/' | relative_url }}">Detailed experience, teaching and service <span aria-hidden="true">&rarr;</span></a></p>
</section>

<section class="site-section" aria-labelledby="cred-h">
  <h2 id="cred-h" class="site-h2">Registration and certification</h2>
  <ul class="site-plain-list">
    {% for c in site.data.service.credentials.registrations %}<li>{{ c }}</li>{% endfor %}
    {% for c in site.data.service.credentials.certifications %}<li>{{ c }}</li>{% endfor %}
  </ul>
  <p class="site-muted">Professional memberships: {{ site.data.service.credentials.memberships | join: ', ' }}.</p>
</section>

<section class="site-section" aria-labelledby="skills-h">
  <h2 id="skills-h" class="site-h2">Expertise</h2>
  <dl class="site-skills">
    {% for g in site.data.skills %}<div><dt>{{ g.group }}</dt><dd>{{ g.items | join: ', ' }}</dd></div>{% endfor %}
  </dl>
</section>

<section class="site-section" aria-labelledby="grants-h">
  <h2 id="grants-h" class="site-h2">Funding and recognition</h2>
  <ul class="site-plain-list">
    {% for g in site.data.service.grants %}<li><strong>{{ g.title }}.</strong> {{ g.detail }}</li>{% endfor %}
    {% for a in site.data.service.awards limit: 3 %}<li>{{ a.title }} ({{ a.year }})</li>{% endfor %}
  </ul>
</section>
