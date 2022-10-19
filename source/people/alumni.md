---
layout: default
title: NYU DH Alumni
breadcrumbs:
  - name: People
    link: /people
---
{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'alum'" %}
{% assign people = people | sort: 'order' %}
{% include cards/people.html data=people full_width=false %}