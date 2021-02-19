---
title: Seed Grants
order: '2'
sticky: true
permalink: "/seed-grants"
layout: page
---

The following projects are recipients of the inaugural round of Digital Humanities Seed Grant funding. These grants support the development of new research projects that analyze digital sources, apply algorithmic methods to humanities data, or create digital publications, exhibits, or websites. The Digital Humanities Seed Grant program, made possible by the Research Technology Faculty Advisory Board, builds upon NYU’s institutional capacity in Digital Humanities work.

## 2020 DH Seed Grant Recipients

<ul>
{% assign seeds2020 = site.projects | where: 'category', '2020 DH Seed Grant Recipient' %}
{% for project in seeds2020 %}
  <li>
    <a href="{{ project.url | absolute_url }}"><b>{{ project.title }}</b></a><br>
    {%- for pi in project.pis -%}{{ pi.name }}, {{ pi.title }}{% unless forloop.last %} & {% endunless %}{%- endfor -%}
  </li>
{% endfor %}
</ul>
