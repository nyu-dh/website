---
title: News + Events
layout: default
hero_image: '/media/banners/doodles/news.png'
contents_links:
  - label: "Highlights"
    link: "/news/highlights"
  - label: "Announcements"
    link: "/news/announcements"
  - label: "Events"
    link: "/news/events"
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
## Events {% include misc/arrow-all-link.html link="/news/events" %}

{% assign events=site.news | where: 'category', 'event' %}
{% include sliders/news.html data=events id="3" %}
</div>