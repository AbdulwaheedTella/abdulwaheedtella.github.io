---
layout: site
permalink: /talks/
title: Talks
nav: true
nav_order: 5
eyebrow: Talks and events
heading: Talks, workshops and conferences
lede: Where I have presented, taught, moderated or organised, with photos where I have them.
description: Talks, panels, workshops and conferences by Abdulwaheed Tella on GeoAI, explainable machine learning, Google Earth Engine and AI policy.
---

{% assign events = site.data.events | sort: 'date' | reverse %}
{% assign current_year = '' %}

<div class="site-events">
  {% for ev in events %}
    {% assign y = ev.date | date: '%Y' %}
    {% if y != current_year %}
      {% unless forloop.first %}</ol>{% endunless %}
      <h2 class="site-year">{{ y }}</h2>
      <ol class="site-event-list">
      {% assign current_year = y %}
    {% endif %}
    <li class="site-event{% if ev.photos %} has-photo{% endif %}">
      {% if ev.photos %}
        <figure class="site-event-photos">
          {% for ph in ev.photos limit: 3 %}
            <img src="{{ '/assets/img/events/' | append: ph.file | relative_url }}" alt="{{ ph.alt }}" loading="lazy">
          {% endfor %}
        </figure>
      {% endif %}
      <div class="site-event-body">
        <p class="site-event-meta">
          <span class="site-badge">{{ ev.role }}</span>
          <time datetime="{{ ev.date | date: '%Y-%m-%d' }}">
            {%- case ev.precision -%}
              {%- when 'day' -%}{{ ev.date | date: '%-d %b %Y' }}
              {%- when 'month' -%}{{ ev.date | date: '%b %Y' }}
              {%- else -%}{{ ev.date | date: '%Y' }}
            {%- endcase -%}
          </time>
          {% if ev.location %}<span>{{ ev.location }}</span>{% endif %}
        </p>
        <h3 class="site-event-title">{{ ev.title | default: ev.event }}</h3>
        {% if ev.title %}<p class="site-event-event">{{ ev.event }}</p>{% endif %}
        <p>{{ ev.summary }}</p>
        {% if ev.links %}
          <p class="site-pub-links">
            {% for l in ev.links %}<a href="{{ l.url }}" rel="noopener">{{ l.label }}</a>{% endfor %}
          </p>
        {% endif %}
      </div>
    </li>
    {% if forloop.last %}</ol>{% endif %}
  {% endfor %}
</div>
