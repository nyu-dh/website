---
title: Project PIs
layout: page
---

<span class="anchor" id="project-pis-2020"></span>
### 2020 Seed Grant Cohort
{% assign projects2020 = site.projects | where: 'year', '2020' %}
<ul class="unstyled">
{% for project in projects2020 %}
  {% for person in project.pis %}
  <li>
    <a href="{{ project.url | absolute_url }}">
      <b>{{ person.name }}</b>
    </a><br>
    {{ person.title }}
  </li>
  {% endfor %}
{% endfor %}
</ul>
