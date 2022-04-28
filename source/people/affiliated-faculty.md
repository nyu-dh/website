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
{% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'affil_fac'" %}
{% assign size = people.size %}
{% assign people = people | sample: size %}
{% include custom/people-cards.html data=people full_width=false %}
