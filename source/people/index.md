---
title: People
layout: default
hero_image: '/assets/images/banners/people.png'
subtitle: |
  Meet some of the people affiliated with digital humanities at NYU. You can find more specific committees and cohorts in the quick links section.
quick_links:
    - label: 'Executive Committee'
      link: 'executive-committee'
    - label: 'Project PIs'
      link: 'project-pis'
    - label: 'Graduate Student Fellows'
      link: 'graduate-student-fellows'
    - label: 'Alumni'
      link: 'alumni'
---

{% assign people = site.data.people | where_exp: "i", "i.site_roles contains 'home'" | sort: 'order' %}
{% include cards/people.html data=people full_width=false %}
