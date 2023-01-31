---
layout: default
title: NYU DH Affiliated Teaching Faculty
breadcrumbs:
  - name: People
    link: /people
contents_links:
    - label: 'Relevant Courses'
      link: '/curriculum/courses/'
---

<div class="container">
{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'affil_fac'" %}
{% assign people = people | sort: 'pid' %}
{% include cards/people.html data=people full_width=false %}
</div>