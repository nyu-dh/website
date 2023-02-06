---
title: Events
layout: default
hero_image: '/media/banners/doodles/news.png'
breadcrumbs:
  - name: News + Events
    link: /news/
contents_links:
  - label: "Highlights"
    link: "/news/highlights"
  - label: "Announcements"
    link: "/news/announcements"
  - label: "Events"
    link: "/news/events"
---

{% assign events=site.news | where: 'category', 'event' %}
{% include cards/news.html data=events %}