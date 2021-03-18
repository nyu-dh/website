---
title: People
layout: page
order: '1'
sticky: true
permalink: "/people"
---
DH at NYU is lots of people and lots of groups collaborating. Between its hand in humanities computing since the 70s, its long tradition of interdisciplinary exploration, and its global mission, NYU runs the gamut of Digital Humanities modes and models. The key to DH at NYU is, and has long been, the diverse array of people exploring data, networking scholarship, and creatively coding.

## Contents
- [Executive Committee](#executive-committee)
- [Project PIs](#project-pis)

<span class="anchor" id="executive-committee"></span>
## Executive Committee

{% assign committee = site.data.committee | sort: 'sort' %}
{% for person in committee %}
<p>
  {% if person.link %}<a href="{{ person.link | absolute_url }}">{% endif %}
    <b>{{ person.name }}</b>
  {% if person.link %}</a>{% endif %}<br>
  {% for role in person.roles %}
    {{ role.title }}, {{ role.unit }}{% unless forloop.last %} & {% endunless %}
  {% endfor %}
</p>
{% endfor %}

<span class="anchor" id="project-pis"></span>
## Project PIs

{% for project in site.projects %}
  {% for person in project.pis %}
  <p>
    <a href="{{ project.url | absolute_url }}">
      <b>{{ person.name }}</b>
    </a><br>
    {{ person.title }}
  </p>
  {% endfor %}
{% endfor %}
