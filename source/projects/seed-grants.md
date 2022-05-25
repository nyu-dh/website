---
title: NYU DH Seed Grant Projects
subtitle: ''
layout: default
breadcrumbs:
  - name: Projects
    link: /projects
---
{% assign seeds = site.projects | where_exp: "i", "i.category contains 'Seed'" %}
{% include cards/projects.html data=seeds full_width=false %}
