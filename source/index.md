---
layout: default
home: true
hero_image: '/media/banners/pots-test.jpg'
title: Computation + Collaboration + Critique
---


<h2>Highlights</h2>

{% assign posts=site.news | where: 'category', 'highlight' %}
{% include carousels/news.html id='2' data=posts %}


<h2>Announcements</h2>


{% assign announcements=site.news | where: 'category', 'announcement' %}
{% include carousels/announcements.html id='1' data=announcements %}

<h2>Projects</h2>

{% assign featured_projects = site.projects | where: 'featured', true | sort: 'order' %}
{% include cards/projects.html data=featured_projects limit=3 %}

<br>
<br>
<br>