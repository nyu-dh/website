---
title: NYU Community DH Projects
subtitle: ''
layout: default
hero_image: '/assets/images/banners/projects.png'
breadcrumbs:
  - name: Projects
    link: /projects
---
{% assign projects = site.projects | where_exp: "i", "i.category contains 'Other'" | sort: 'image' | reverse %}
{% include cards/projects.html data=projects %}
