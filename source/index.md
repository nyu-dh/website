---
layout: default
home: true
title: Computation x Collaboration x Critique
---

<div markdown="1">
## Featured News

{% include cards/news.html data=site.news limit=3 %}
</div>

<hr>

<div markdown="1">
## Featured Projects

{% assign featured_projects = site.projects | where: 'featured', true | sort: 'order' %}
{% include cards/projects.html data=featured_projects full_width=false limit=3 %}
</div>