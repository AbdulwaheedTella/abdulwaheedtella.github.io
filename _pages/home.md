---
layout: site
permalink: /
title: Home
hide_header: true
nav: false
description: Abdulwaheed Tella is a GeoAI researcher (PhD candidate, Monash University Malaysia) building explainable, transferable machine-learning models from satellite and geospatial data for flood risk, urban heat and environmental decision support.
---

{% assign p = site.data.profile %}
{% assign projects = site.projects | sort: 'order' %}

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Person",
  "name": "{{ p.name }}",
  "honorificSuffix": "{{ p.post_nominals }}",
  "url": "{{ '/' | absolute_url }}",
  "image": "{{ p.photo | absolute_url }}",
  "jobTitle": "GeoAI researcher and PhD candidate",
  "description": {{ site.description | strip | jsonify }},
  "affiliation": { "@type": "CollegeOrUniversity", "name": "Monash University Malaysia" },
  "alumniOf": [
    { "@type": "CollegeOrUniversity", "name": "Universiti Teknologi PETRONAS" },
    { "@type": "CollegeOrUniversity", "name": "Federal University of Technology Akure" }
  ],
  "knowsAbout": ["Geospatial artificial intelligence", "Explainable AI", "Remote sensing", "Google Earth Engine", "Flood susceptibility mapping", "Urban heat", "Air quality modelling"],
  "address": { "@type": "PostalAddress", "addressRegion": "Selangor", "addressCountry": "MY" },
  "sameAs": [
    "https://scholar.google.com/citations?user={{ site.data.socials.scholar_userid }}",
    "https://orcid.org/{{ site.data.socials.orcid_id }}",
    "https://github.com/{{ site.data.socials.github_username }}",
    "https://www.linkedin.com/in/{{ site.data.socials.linkedin_username }}"
  ]
}
</script>

{% assign so = site.data.socials %}

<section class="site-profile" aria-labelledby="hero-h">
  <img class="site-profile-photo" src="{{ p.photo | relative_url }}" alt="{{ p.photo_alt }}" width="322" height="279" fetchpriority="high">
  <div class="site-profile-text">
    <h1 id="hero-h" class="site-profile-name">{{ p.name }}<span class="site-postnominals">{{ p.post_nominals }}</span></h1>
    <ul class="site-profile-lines">
      {% for l in p.card_lines %}<li>{{ l }}</li>{% endfor %}
      <li>Email: <a href="mailto:{{ so.email }}">{{ so.email }}</a></li>
    </ul>
    {% include site/profile-links.liquid %}
  </div>
  <dl class="site-glance" aria-label="At a glance">
    {% for s in p.stats limit: 3 %}
      <div><dt>{{ s.label }}</dt><dd>{{ s.value }}</dd></div>
    {% endfor %}
    <div><dt>Best Student Paper</dt><dd>IEEE 2024</dd></div>
  </dl>
</section>

<p class="site-tagline">
  {{ p.tagline }}
  <a href="{{ '/contact/' | relative_url }}">Get in touch&nbsp;<span aria-hidden="true">&rarr;</span></a>
</p>

<section aria-labelledby="work-h" class="site-tiles-section">
  <h2 id="work-h" class="sr-only">Selected work</h2>
  <ul class="site-tiles">
    {% assign featured = projects | where: 'featured', true %}
    {% for pr in featured %}
      <li class="site-tile">
        <a href="{{ pr.url | relative_url }}">
          <img class="site-tile-img" src="{{ pr.image | relative_url }}" alt="" loading="lazy">
          <span class="site-tile-title">{{ pr.short_title | default: pr.title }}</span>
          <span class="site-tile-caption">{{ pr.status }}</span>
        </a>
      </li>
    {% endfor %}
  </ul>
  <p class="site-more"><a href="{{ '/projects/' | relative_url }}">All projects and case studies <span aria-hidden="true">&rarr;</span></a></p>
</section>

<div class="site-columns">
  <div class="site-col-main">
    <section aria-labelledby="about-h">
      <h2 id="about-h" class="site-h2">About</h2>
      <div class="site-prose">
        <p>{{ p.about[0] }}</p>
        <p>{{ p.about[1] }}</p>
      </div>
      <p class="site-more"><a href="{{ '/about/' | relative_url }}">More about me <span aria-hidden="true">&rarr;</span></a></p>
    </section>

    <section class="site-section" aria-labelledby="rec-h">
      <h2 id="rec-h" class="site-h2">Recognition and professional service</h2>
      <ul class="site-recognition">
        {% for r in site.data.recognition %}
          <li><strong>{{ r.title }}</strong>, {{ r.detail }}</li>
        {% endfor %}
      </ul>
      <p class="site-more"><a href="{{ '/experience/' | relative_url }}">Experience, teaching and service <span aria-hidden="true">&rarr;</span></a></p>
    </section>

  </div>

  <aside class="site-col-side" aria-label="Updates and highlights">
    <section aria-labelledby="news-h">
      <h2 id="news-h" class="site-h2">Latest news</h2>
      {% include site/news-list.liquid limit=5 compact=true %}
      <p class="site-more"><a href="{{ '/news/' | relative_url }}">All news <span aria-hidden="true">&rarr;</span></a></p>
    </section>

    <section class="site-section-sm" aria-labelledby="pub-h">
      <h2 id="pub-h" class="site-h2">Selected publications</h2>
      <ol class="site-pubs site-pubs-compact">
        {% assign selected = site.data.publications.published | where: 'selected', true %}
        {% for pub in selected limit: 4 %}{% include site/pub-item.liquid pub=pub compact=true %}{% endfor %}
      </ol>
      <p class="site-more"><a href="{{ '/publications/' | relative_url }}">All publications <span aria-hidden="true">&rarr;</span></a></p>
    </section>

    <section class="site-section-sm" aria-labelledby="res-h">
      <h2 id="res-h" class="site-h2">Research themes</h2>
      <ul class="site-plain-list">
        {% for t in site.data.research %}
          <li><a href="{{ '/research/#' | append: t.slug | relative_url }}">{{ t.title }}</a></li>
        {% endfor %}
      </ul>
    </section>

  </aside>
</div>
