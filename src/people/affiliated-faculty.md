---
title: Affiliated Faculty
layout: default
breadcrumbs:
  - link: /about-us#people
    name: People
---

{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'affil_fac'" %}
{% include custom/people-cards.html data=people %}
