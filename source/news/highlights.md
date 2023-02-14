---
title: Highlights
layout: default
hero_image: '/assets/images/banners/news.png'
breadcrumbs:
  - name: News + Events
    link: /news/
---
{% assign posts=site.news | where: 'category', 'highlight' %}
{% include cards/news.html data=posts %}