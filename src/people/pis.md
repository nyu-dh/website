---
title: Project PIs
layout: default
breadcrumbs:
  - link: /people/
    name: People
---

{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'proj_pi'" %}
{% include custom/people-cards.html data=people %}
