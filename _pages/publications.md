---
layout: site
permalink: /publications/
title: Publications
nav: true
nav_order: 4
eyebrow: Publications
heading: Publications
lede: Peer-reviewed articles, book chapters and conference papers, with links to the publisher and Google Scholar. Filter by year, type or topic.
description: Publications by Abdulwaheed Tella on explainable GeoAI, flood susceptibility, Earth observation, urban heat and air quality, with DOI and Google Scholar links.
---

{% assign all = site.data.publications.published %}
{% assign journals = all | where: 'type', 'journal' %}
{% assign chapters = all | where: 'type', 'chapter' %}
{% assign confs = all | where: 'type', 'conference' %}

<p class="site-summary-line">
  {{ journals.size }} journal articles &middot; {{ chapters.size }} book chapters &middot; {{ confs.size }} conference papers &middot;
  <a href="{{ site.data.publications.scholar_url }}" rel="noopener">Google Scholar<span class="sr-only"> (opens external site)</span></a> &middot;
  <a href="{{ site.data.publications.orcid_url }}" rel="noopener">ORCID<span class="sr-only"> (opens external site)</span></a>
</p>
<p class="site-note">
  Citation figures on Google Scholar (1,000+ citations, h-index 13, as of September 2026) are reported on my CV. The list below follows the CV numbering. Publisher links are DOI links.
</p>

<section class="site-section" aria-labelledby="sel-h">
  <h2 id="sel-h" class="site-h2">Selected</h2>
  <ol class="site-pubs">
    {% assign selected = all | where: 'selected', true %}
    {% for pub in selected %}{% include site/pub-item.liquid pub=pub %}{% endfor %}
  </ol>
</section>

<section class="site-section" aria-labelledby="all-h">
  <h2 id="all-h" class="site-h2">All publications</h2>
  <form class="site-filters" id="pub-filters" role="search" aria-label="Filter publications" onsubmit="return false">
    <div>
      <label for="f-q">Search</label>
      <input id="f-q" type="search" placeholder="Title, author or venue" autocomplete="off">
    </div>
    <div>
      <label for="f-year">Year</label>
      <select id="f-year">
        <option value="">All years</option>
        {% assign years = all | map: 'year' | uniq | sort | reverse %}
        {% for y in years %}<option value="{{ y }}">{{ y }}</option>{% endfor %}
      </select>
    </div>
    <div>
      <label for="f-type">Type</label>
      <select id="f-type">
        <option value="">All types</option>
        {% for t in site.data.publications.types %}<option value="{{ t[0] }}">{{ t[1] }}</option>{% endfor %}
      </select>
    </div>
    <div>
      <label for="f-topic">Topic</label>
      <select id="f-topic">
        <option value="">All topics</option>
        {% for t in site.data.publications.topics %}<option value="{{ t.slug }}">{{ t.label }}</option>{% endfor %}
      </select>
    </div>
    <button type="reset" class="site-btn site-btn-small" id="f-reset">Clear</button>
  </form>
  <p class="site-result-count" id="pub-count" role="status" aria-live="polite">Showing {{ all.size }} of {{ all.size }}</p>
  <ol class="site-pubs" id="pub-list">
    {% for pub in all %}{% include site/pub-item.liquid pub=pub %}{% endfor %}
  </ol>
  <p class="site-empty" id="pub-empty" hidden>No publications match these filters.</p>
</section>

<section class="site-section" aria-labelledby="ip-h">
  <h2 id="ip-h" class="site-h2">Under review and in preparation</h2>
  <p class="site-note">Listed for transparency. These are not yet published and have no public links.</p>
  <ul class="site-rows">
    {% for ip in site.data.publications.in_progress %}
      <li>
        <strong>{{ ip.title }}</strong>
        <span>{% if ip.venue != '' %}{{ ip.venue }}{% endif %}</span>
        <span class="site-badge">{{ ip.status }}</span>
      </li>
    {% endfor %}
  </ul>
</section>

<script src="{{ '/assets/js/publications-filter.js' | relative_url | bust_file_cache }}" defer></script>
