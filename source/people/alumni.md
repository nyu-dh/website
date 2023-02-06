---
layout: default
title: NYU DH Alumni
hero_image: '/media/banners/doodles/people.png'
breadcrumbs:
  - name: People
    link: /people
---
<div class="container">
{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'alum'" %}
{% assign people = people | sort: 'order' %}
{% include cards/people.html data=people full_width=false %}
</div>