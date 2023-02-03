---
layout: default
home: true
hero_image: '/media/banners/pots-test.jpg'
title: Computation + Collaboration + Critique
---

<br>

<div class ="container">
<div class ="content" markdown="1">
<h2>Announcements</h2>
<p>Lorem ipsum dolor si amet</p>
</div>
</div>


{% assign announcements=site.news | where: 'category', 'announcement' %}
{% include cards/news.html id='1' data=announcements columns=2 %}


<br>
<br>
<br>


<div class ="container">
<div class ="content" markdown="1">
<h2>Highlights</h2>
<p>Lorem ipsum dolor si amet</p>
</div>
</div>


{% assign posts=site.news | where: 'category', 'highlight' %}
{% include cards/news.html id='2' data=posts %}



<br>
<br>
<br>

<div class ="container">
<div class ="content" markdown="1">
<h2>Featured Projects</h2>
<p>Lorem ipsum dolor si amet</p>
</div>
</div>

{% assign featured_projects = site.projects | where: 'featured', true | sort: 'order' %}
{% include cards/projects.html data=featured_projects limit=3 %}

<br>
<br>
<br>