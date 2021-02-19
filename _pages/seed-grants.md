---
title: Seed Grants
order: '2'
sticky: true
permalink: "/seed-grants"
layout: page
---

The following projects are recipients of the inaugural round of Digital Humanities Seed Grant funding. These grants support the development of new research projects that analyze digital sources, apply algorithmic methods to humanities data, or create digital publications, exhibits, or websites. The Digital Humanities Seed Grant program, made possible by the Research Technology Faculty Advisory Board, builds upon NYU’s institutional capacity in Digital Humanities work.

## 2020 DH Seed Grant Recipients

{% for project in site.data.seed_grant_projects_2020 %}
  <div class="project-card">
    <h3>{{ project.title }}</h3>
    <p>
      <b>Principal Investigators:</b><br>
      {% for pi in project.pis %}
        {{ pi.name }}, {{ pi.title }}{% unless forloop.last %} & {% endunless %}
      {% endfor %}
    </p>
    <p>
      <b>Abstract:</b> {{ project.abstract | default: 'Coming Soon!' }}
    </p>
    {% if project.link %}
    <p>
      <b>Project Website: </b> <a href="{{ project.link | aabsolute_url }}">{{ project.link }}</a>
    </p>
    {% endif %}
  </div>
{% endfor %}
