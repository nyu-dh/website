---
title: Projects
subtitle: |
  Below you'll find a selection of featured projects. You can browse even more projects by category using the quick links.
hero_image: '/media/banners/doodles/projects.png'
layout: default
contents_links:
  - label: 'NYU DH Seed Grant Projects'
    link: '/projects/seed-grants/'
  - label: 'NYU DH Graduate Fellowship Projects'
    link: '/projects/fellowships/'
  - label: 'NYU Community DH Projects'
    link: '/projects/community/'
  - label: 'All Projects'
    link: '/projects/all'
---

## Seed Grant Projects {% include misc/arrow-all-link.html link="/projects/seed-grants/" %}
{% assign seeds = site.projects | where_exp: "i", "i.category contains 'Seed'" | sort: 'image' | reverse %}
{% include sliders/projects.html data=seeds id="1" %}

## Graduate Fellowship Projects {% include misc/arrow-all-link.html link="/projects/fellowships/" %}
{% assign fellows = site.projects | where_exp: "i", "i.category contains 'Fellowship'" | sort: 'image' | reverse %}
{% include sliders/projects.html data=fellows id="2" %}

## NYU Community DH Projects {% include misc/arrow-all-link.html link="/projects/community/" %}

{% assign community = site.projects | where_exp: "i", "i.category contains 'Other'" | sort: 'image' | reverse %}
{% include sliders/projects.html data=community id="3" %}