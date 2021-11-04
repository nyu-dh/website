---
title: Executive Committee
layout: default
breadcrumbs:
  - link: /about-us#people
    name: People
---

{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'exec_com'" %}
{% include custom/people-cards.html data=people %}
