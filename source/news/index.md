---
title: News + Events
layout: default
hero_image: '/assets/images/banners/news.png'
quick_links:
  - label: "Spotlights"
    link: "/news/highlights"
  - label: "Announcements"
    link: "/news/announcements"
  - label: "Events"
    link: "/news/events"
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
## Events {% include misc/arrow-all-link.html link="/news/events" %}

{% assign events=site.news | where: 'category', 'event' %}
{% include sliders/news.html hide_images=true data=events id="3" %}
</div>