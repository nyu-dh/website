---
title: All Projects
subtitle: ''
layout: default
breadcrumbs:
  - name: Projects
    link: /projects
---
{% assign projects = site.projects %}
{% include custom/project-cards.html data=projects full_width=false %}
