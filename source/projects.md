---
title: Projects
subtitle: |
  Below you'll find a selection of featured projects. You can browse even more projects by category using the quick links.
hero_image: '/media/banners/doodles/projects.png'
layout: default
contents_links:
  - label: 'NYU DH Seed Grant Projects'
    link: '/projects/seed-grants'
  - label: 'NYU DH Graduate Fellowship Projects'
    link: '/projects/fellowships'
  - label: 'NYU Community DH Projects'
    link: '/projects/community'
  - label: 'All Projects'
    link: '/projects/all'
---

<div class="content">
<h2>Featured</h2>
</div>

{% assign featured_projects = site.projects | where: 'featured', true | sort: 'order' %}
{% include cards/projects.html data=featured_projects full_width=false %}
