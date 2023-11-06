---
title: Spotlights
layout: default
hero_image: '/assets/images/banners/news.png'
breadcrumbs:
  - name: News + Events
    link: /news/
---
{% assign posts=site.news | where: 'category', 'spotlight' %}
{% include cards/news.html data=posts %}