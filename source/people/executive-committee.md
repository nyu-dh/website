---
layout: default
title: NYU DH Executive Committee
hero_image: '/assets/images/banners/people.png'
breadcrumbs:
  - name: People
    link: /people
---

{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'exec_com'" %}
{% assign people = people | sort: 'order' %}
{% include cards/people.html data=people full_width=false %}
