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

<section class="site-hero" aria-labelledby="hero-h">
  <div class="site-hero-text">
    <p class="site-eyebrow">{{ p.post_nominals }} &middot; {{ p.location }}</p>
    <h1 id="hero-h" class="site-display">{{ p.name }}</h1>
    <p class="site-hero-headline">{{ p.headline }}</p>
    <p class="site-lede">{{ p.positioning }}</p>
    <ul class="site-tags site-tags-lg" aria-label="Areas of expertise">
      {% for e in p.expertise %}<li>{{ e }}</li>{% endfor %}
    </ul>
    <p class="site-actions">
      <a class="site-btn site-btn-primary" href="{{ '/projects/' | relative_url }}">View selected work</a>
      <a class="site-btn" href="{{ '/publications/' | relative_url }}">Read publications</a>
      <a class="site-btn" href="{{ '/cv/' | relative_url }}">CV</a>
      <a class="site-btn" href="{{ '/contact/' | relative_url }}">Contact</a>
    </p>
  </div>
  <figure class="site-hero-photo">
    <img src="{{ p.photo | relative_url }}" alt="{{ p.photo_alt }}" width="322" height="279" fetchpriority="high">
  </figure>
</section>

<dl class="site-stats">
  {% for s in p.stats %}
    <div class="site-stat">
      <dt>{{ s.label }}</dt>
      <dd><span class="site-stat-value">{{ s.value }}</span><span class="site-stat-note">{{ s.note }}</span></dd>
    </div>
  {% endfor %}
</dl>

<section class="site-section" aria-labelledby="about-h">
  <h2 id="about-h" class="site-h2">What I work on</h2>
  <div class="site-prose site-prose-narrow">
    <p>{{ p.about[0] }}</p>
    <p>{{ p.about[1] }}</p>
  </div>
  <p class="site-more"><a href="{{ '/about/' | relative_url }}">More about my background <span aria-hidden="true">&rarr;</span></a></p>
</section>

<section class="site-section" aria-labelledby="work-h">
  <div class="site-section-head">
    <h2 id="work-h" class="site-h2">Selected work</h2>
    <a href="{{ '/projects/' | relative_url }}">All projects <span aria-hidden="true">&rarr;</span></a>
  </div>
  <div class="site-grid">
    {% assign featured = projects | where: 'featured', true %}
    {% for pr in featured %}{% include site/project-card.liquid project=pr %}{% endfor %}
  </div>
</section>

<section class="site-section" aria-labelledby="res-h">
  <div class="site-section-head">
    <h2 id="res-h" class="site-h2">Research themes</h2>
    <a href="{{ '/research/' | relative_url }}">Research overview <span aria-hidden="true">&rarr;</span></a>
  </div>
  <ul class="site-themes">
    {% for t in site.data.research %}
      <li>
        <a href="{{ '/research/#' | append: t.slug | relative_url }}">{{ t.title }}</a>
        <span>{{ t.plain }}</span>
      </li>
    {% endfor %}
  </ul>
</section>

<section class="site-section" aria-labelledby="pub-h">
  <div class="site-section-head">
    <h2 id="pub-h" class="site-h2">Selected publications</h2>
    <a href="{{ '/publications/' | relative_url }}">All publications <span aria-hidden="true">&rarr;</span></a>
  </div>
  <ol class="site-pubs">
    {% assign selected = site.data.publications.published | where: 'selected', true %}
    {% for pub in selected limit: 4 %}{% include site/pub-item.liquid pub=pub %}{% endfor %}
  </ol>
  <p class="site-more"><a href="{{ site.data.publications.scholar_url }}" rel="noopener">Full list on Google Scholar <span class="sr-only">(opens external site)</span></a></p>
</section>

<section class="site-section" aria-labelledby="news-h">
  <div class="site-section-head">
    <h2 id="news-h" class="site-h2">Latest updates</h2>
    <a href="{{ '/news/' | relative_url }}">News archive <span aria-hidden="true">&rarr;</span></a>
  </div>
  {% include site/news-list.liquid limit=4 %}
</section>

<section class="site-section" aria-labelledby="gh-h">
  <div class="site-section-head">
    <h2 id="gh-h" class="site-h2">Code on GitHub</h2>
    <a href="{{ site.data.repositories.profile }}" rel="noopener">github.com/{{ site.data.socials.github_username }} <span class="sr-only">(opens external site)</span></a>
  </div>
  {% include site/repo-list.liquid %}
</section>

<section class="site-cta" aria-labelledby="cta-h">
  <h2 id="cta-h" class="site-h2">Working together</h2>
  <p>
    I welcome research collaborations and applied GeoAI and earth-observation projects with academic and industry partners.
  </p>
  <p class="site-actions">
    <a class="site-btn site-btn-primary" href="{{ '/contact/' | relative_url }}">Get in touch</a>
    <a class="site-btn" href="{{ '/cv/' | relative_url }}">See my CV</a>
  </p>
</section>
