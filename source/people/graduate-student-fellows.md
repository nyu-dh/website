---
layout: default
title: NYU DH Graduate Student Fellows
hero_image: '/assets/images/banners/people.png'
breadcrumbs:
  - name: People
    link: /people
quick_links:
    - label: 'NYU DH Graduate Fellowship Program'
      link: '/funding/grad-fellowships/'
    - label: 'Browse NYU DH Fellowship Projects'
      link: '/projects/fellowships/'
---

{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'fellow'" %}
{% assign people = people | sort: 'pid' %}
{% include cards/people.html data=people full_width=false %}
