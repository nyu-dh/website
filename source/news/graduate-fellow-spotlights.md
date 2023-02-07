---
title: Graduate Fellow Spotlights
layout: default
hero_image: '/media/banners/doodles/news.png'
breadcrumbs:
  - name: News + Events
    link: /news/
---

{% assign spotlights=site.news | where: 'series', 'graduate fellow spotlight' %}
{% include cards/news.html data=spotlights %}