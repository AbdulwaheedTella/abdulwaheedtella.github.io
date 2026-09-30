---
layout: site
permalink: /experience/
title: Experience
nav: true
nav_order: 5
eyebrow: Experience
heading: Experience, teaching and service
lede: A condensed timeline of research, academic and industry roles, followed by teaching, supervision, service and funding.
description: Research, academic and industry experience of Abdulwaheed Tella, plus teaching, supervision, peer review, policy engagement, grants and awards.
---

{% assign s = site.data.service %}

<ol class="site-timeline">
  {% for x in site.data.experience.positions %}
    <li>
      <p class="site-timeline-dates">{{ x.dates }} <span class="site-badge">{{ x.kind | capitalize }}</span></p>
      <h2 class="site-h3">{{ x.role }}</h2>
      <p class="site-timeline-org">{{ x.org }}{% if x.place %}, {{ x.place }}{% endif %}</p>
      <p>{{ x.summary }}</p>
      <ul>
        {% for pt in x.points %}<li>{{ pt }}</li>{% endfor %}
      </ul>
      {% if x.project %}
        {% assign rp = site.projects | where: 'slug', x.project | first %}
        {% if rp %}<p><a href="{{ rp.url | relative_url }}">Related case study: {{ rp.title }}</a></p>{% endif %}
      {% endif %}
    </li>
  {% endfor %}
</ol>

<section class="site-section" id="education" aria-labelledby="edu-h">
  <h2 id="edu-h" class="site-h2">Education</h2>
  <ul class="site-rows">
    {% for e in site.data.education %}
      <li><strong>{{ e.degree }}</strong><span>{{ e.org }}</span><span class="site-muted">{{ e.dates }}</span><p>{{ e.detail }}</p></li>
    {% endfor %}
  </ul>
</section>

<section class="site-section" id="teaching" aria-labelledby="teach-h">
  <h2 id="teach-h" class="site-h2">Teaching</h2>
  <ul class="site-rows">
    {% for t in s.teaching %}
      <li><strong>{{ t.role }}</strong><span>{{ t.org }}</span><span class="site-muted">{{ t.dates }}</span><p>{{ t.note }}</p></li>
    {% endfor %}
  </ul>
</section>

<section class="site-section" id="supervision" aria-labelledby="sup-h">
  <h2 id="sup-h" class="site-h2">Mentoring and supervision</h2>
  <ul class="site-rows">
    {% for t in s.supervision %}
      <li><strong>{{ t.role }}</strong><span>{{ t.org }}</span><span class="site-muted">{{ t.dates }}</span><p>{{ t.note }}</p></li>
    {% endfor %}
  </ul>
</section>

<section class="site-section" id="service" aria-labelledby="serv-h">
  <h2 id="serv-h" class="site-h2">Service, talks and engagement</h2>
  <ul class="site-rows">
    {% for t in s.service %}
      <li><strong>{{ t.title }}</strong><p>{{ t.note }}</p></li>
    {% endfor %}
  </ul>
</section>

<section class="site-section" id="funding" aria-labelledby="fund-h">
  <h2 id="fund-h" class="site-h2">Grants and fellowships</h2>
  <ul class="site-rows">
    {% for g in s.grants %}
      <li><strong>{{ g.title }}</strong><p>{{ g.detail }}</p></li>
    {% endfor %}
  </ul>
</section>

<section class="site-section" id="awards" aria-labelledby="awd-h">
  <h2 id="awd-h" class="site-h2">Awards and scholarships</h2>
  <ul class="site-rows">
    {% for a in s.awards %}
      <li><strong>{{ a.title }}</strong><span class="site-muted">{{ a.year }}</span></li>
    {% endfor %}
  </ul>
</section>
