---
title: Projects
layout: page
---
This is a blurb about what projects are represented here and why amet, consectetur adipiscing elit. Sed eu elit in diam congue vehicula non sed magna. Aenean sit amet odio auctor, bibendum est eget, ultricies justo.

<ul>
{% for project in site.projects %}
  <li>
    <a href="{{ project.url | absolute_url }}"><b>{{ project.title }}</b></a><br>
    {%- for pi in project.pis -%}{{ pi.name }}, {{ pi.title }}{% unless forloop.last %} & {% endunless %}{%- endfor -%}
  </li>
{% endfor %}
</ul>
