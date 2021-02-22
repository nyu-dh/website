---
title: People
layout: page
order: '1'
sticky: true
permalink: "/people"
---
Blurb about there being lots of people and lots of groups collaborating and so on and so forth. Sed eu elit in diam congue vehicula non sed magna. Aenean sit amet odio auctor, bibendum est eget, ultricies justo. Phasellus aliquam diam nec purus tincidunt lacinia. Duis eu porta enim, a fermentum eros. Phasellus placerat rutrum.

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
