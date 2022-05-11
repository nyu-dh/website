---
title: All Projects
subtitle: ''
layout: default
breadcrumbs:
  - name: Projects
    link: /projects
contents_links:
  - label: 'Featured Projects'
    link: '/projects'
  - label: 'NYU DH Seed Grant Projects'
    link: '/projects/seed-grants'
  - label: 'NYU DH Graduate Fellowship Projects'
    link: '/projects/fellowships'
  - label: 'NYU Community DH Projects'
    link: '/projects/community'
---
{% assign projects = site.projects %}
{% include custom/project-cards.html data=projects full_width=false %}
