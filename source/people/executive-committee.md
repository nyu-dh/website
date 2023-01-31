---
layout: default
title: NYU DH Executive Committee
breadcrumbs:
  - name: People
    link: /people
---
<div class="container">
{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'exec_com'" %}
{% assign people = people | sort: 'order' %}
{% include cards/people.html data=people full_width=false %}
</div>