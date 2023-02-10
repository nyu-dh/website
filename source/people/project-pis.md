---
layout: default
title: NYU DH Project PIs
hero_image: '/media/banners/doodles/people.png'
breadcrumbs:
  - name: People
    link: /people
quick_links:
    - label: 'NYU DH Faculty Seed Grant Program'
      link: '/funding/seed-grants/'
    - label: 'View All Projects'
      link: '/projects'
---
<div class="container">
{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'proj_pi'" %}
{% assign people = people | sort: 'pid' %}
{% include cards/people.html data=people full_width=false %}
</div>