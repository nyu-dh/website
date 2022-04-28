---
layout: default
title: NYU DH Executive Committee
breadcrumbs:
  - name: People
    link: /people
---
{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'exec_com'" %}
{% assign size = people.size %}
{% assign people = people | sample: size %}
{% include custom/people-cards.html data=people full_width=false %}
