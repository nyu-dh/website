---
title: Projects
layout: default
---
<!-- {% assign projects = site.data.projects | where_exp: "p", "p.category contains 'Seed Grant'" %} -->
{% include custom/project-cards.html data=site.data.projects full_width=true %}
