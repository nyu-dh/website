---
title: Featured Projects
subtitle: |
  Below you'll find a selection of featured projects. You can browse even more projects by category using the quick links.
layout: default
contents_links:
  - label: 'NYU DH Seed Grant Projects'
    link: 'seed-grants'
  - label: 'NYU DH Graduate Fellowship Projects'
    link: 'fellowships'
  - label: 'NYU Community DH Projects'
    link: 'community'
  - label: 'All Projects'
    link: 'all'
---
{% assign featured_projects = site.projects | where: 'featured', true %}
{% include custom/project-cards.html data=featured_projects full_width=false %}
