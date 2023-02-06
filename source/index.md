---
layout: default
home: true
hero_image: '/media/banners/doodles/home.png'
title: Computation + Collaboration + Critique
---

<div class="block pb-5" markdown="1">
## Highlights {% include misc/arrow-all-link.html link="/news/highlights" %}

{% assign posts=site.news | where: 'category', 'highlight' %}
{% include sliders/news.html data=posts id="1" %}

</div>


<div class="block pb-5" markdown="1">
## Announcements {% include misc/arrow-all-link.html link="/news/announcements" %}

{% assign announcements=site.news | where: 'category', 'announcement' %}
{% include sliders/news.html data=announcements id="2" %}
</div>




<div class="block pb-5" markdown="1">
## Projects {% include misc/arrow-all-link.html link="/projects" %}

{% assign featured_projects = site.projects | where: 'featured', true | sort: 'order' %}
{% include cards/projects.html data=featured_projects limit=3 %}
</div>