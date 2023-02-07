---
title: NYU Community DH Projects
subtitle: ''
layout: default
hero_image: '/media/banners/doodles/projects.png'
breadcrumbs:
  - name: Projects
    link: /projects
---
{% assign projects = site.projects | where_exp: "i", "i.category contains 'Other'" %}
{% include cards/projects.html data=projects %}
