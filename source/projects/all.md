---
title: All Projects
subtitle: ''
layout: default
hero_image: '/assets/images/banners/projects.png'
breadcrumbs:
  - name: Projects
    link: /projects
quick_links:
  - label: 'Featured Projects'
    link: '/projects'
  - label: 'NYU DH Seed Grant Projects'
    link: '/projects/seed-grants'
  - label: 'NYU DH Graduate Fellowship Projects'
    link: '/projects/fellowships'
  - label: 'NYU Community DH Projects'
    link: '/projects/community'
---
{% assign projects = site.projects | sort: 'image' | reverse %}
{% include cards/projects.html data=projects %}
