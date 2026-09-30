---
layout: site
permalink: /research/
title: Research
nav: true
nav_order: 2
eyebrow: Research
heading: Research themes
lede: My work sits around one question, how to make geospatial machine learning reliable enough to inform real decisions. Each theme below links to the papers and projects behind it.
description: Research themes of Abdulwaheed Tella covering explainable and reliable GeoAI, flood and hazard risk, Earth observation, urban heat, air quality and decision support.
---

{% assign pubs = site.data.publications.published %}

<nav class="site-jump" aria-label="Research themes">
  <ul class="site-tags">
    {% for t in site.data.research %}<li><a href="#{{ t.slug }}">{{ t.title }}</a></li>{% endfor %}
  </ul>
</nav>

{% for t in site.data.research %}

  <section class="site-theme" id="{{ t.slug }}" aria-labelledby="{{ t.slug }}-h">
    <h2 id="{{ t.slug }}-h" class="site-h2">{{ t.title }}</h2>
    <p class="site-theme-plain">{{ t.plain }}</p>
    <p>{{ t.summary }}</p>
    <ul class="site-tags" aria-label="Methods">
      {% for m in t.methods %}<li>{{ m }}</li>{% endfor %}
    </ul>

    <div class="site-theme-links">
      {% if t.projects %}
        <div>
          <h3 class="site-h3">Projects</h3>
          <ul class="site-plain-list">
            {% for slug in t.projects %}
              {% assign rp = site.projects | where: 'slug', slug | first %}
              {% if rp %}<li><a href="{{ rp.url | relative_url }}">{{ rp.title }}</a></li>{% endif %}
            {% endfor %}
          </ul>
        </div>
      {% endif %}
      <div>
        <h3 class="site-h3">Publications</h3>
        <ul class="site-plain-list">
          {% for pid in t.pubs %}
            {% assign pub = pubs | where: 'id', pid | first %}
            {% if pub %}
              <li>
                {% if pub.doi %}<a href="https://doi.org/{{ pub.doi }}" rel="noopener">{{ pub.title }}</a>{% else %}{{ pub.title }}{% endif %}
                <span class="site-muted">({{ pub.venue | split: ' (' | first }}, {{ pub.year }})</span>
              </li>
            {% endif %}
          {% endfor %}
          {% for ip in site.data.publications.in_progress %}
            {% for pend in t.pending %}
              {% if ip.title contains pend %}<li>{{ ip.title }} <span class="site-muted">({{ ip.status }})</span></li>{% endif %}
            {% endfor %}
          {% endfor %}
        </ul>
      </div>
    </div>

  </section>
{% endfor %}

<p class="site-note">
  Code and datasets: the research code is currently in private repositories. See also my
  <a href="{{ site.data.publications.scholar_url }}" rel="noopener">Google Scholar profile</a> and
  <a href="{{ site.data.publications.orcid_url }}" rel="noopener">ORCID record</a>.
</p>
