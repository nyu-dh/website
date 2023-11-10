---
layout: default
home: true
hero_image: '/assets/images/banners/home.png'
title: Computation + Collaboration + Critique
---

<div class="block pb-5" markdown="1">
## Spotlights {% include misc/arrow-all-link.html link="/news/spotlights" %}

{% assign posts=site.news | where: 'category', 'spotlight' %}
{% include sliders/news.html data=posts id="1" %}

</div>


<div class="block pb-5" markdown="1">
## Announcements {% include misc/arrow-all-link.html link="/news/announcements" %}

{% assign announcements=site.news | where: 'category', 'announcement' %}
{% include sliders/news.html hide_images=true data=announcements id="2" %}
</div>




<div class="block pb-5" markdown="1">
## Projects {% include misc/arrow-all-link.html link="/projects" %}

{% assign featured_projects = site.projects | where: 'featured', true | sort: 'order' %}
{% include sliders/projects.html data=featured_projects id="3" %}
</div>