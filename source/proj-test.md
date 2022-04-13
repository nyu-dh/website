---
layout: page
title: Projects Test
---
{% for project in site.projects %}
  - [{{ project.title }}]({{ project.url | absolute_url }})
{% endfor %}
