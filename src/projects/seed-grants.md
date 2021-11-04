---
title: Seed Grant Projects
layout: default
breadcrumbs:
  - name: Projects
    link: /projects
---
{% assign projects = site.data.projects | where_exp: "p", "p.category contains 'Seed Grant'" %}
{% include custom/project-cards.html data=projects %}
