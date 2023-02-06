---
title: Events
layout: default
hero_image: '/media/banners/doodles/news.png'
breadcrumbs:
  - name: News + Events
    link: /news/
---

{% assign events=site.news | where: 'category', 'event' %}
{% include cards/news.html data=events hide_images=true %}