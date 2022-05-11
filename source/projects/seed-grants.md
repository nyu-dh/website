---
title: NYU DH Seed Grant Projects
subtitle: ''
layout: default
breadcrumbs:
  - name: Projects
    link: /projects
---
{% assign seeds = site.projects | where_exp: "i", "i.category contains 'Seed'" %}
{% include custom/project-cards.html data=seeds full_width=false %}
