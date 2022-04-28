---
title: People
layout: default
subtitle: |
  Here you'll find a randomly ordered list of people affiliated with digital humanities at NYU. You can find more specific committees and cohorts in the quick links section.
contents_links:
    - label: 'Executive Committee'
      link: 'executive-committee'
    - label: 'Project PIs'
      link: 'project-pis'
    - label: 'Affiliated Teaching Faculty'
      link: 'affiliated-faculty'
    - label: 'Graduate Student Fellows'
      link: 'graduate-student-fellows'
---

{% assign size = site.data.people.size %}
{% assign people = site.data.people | sample: size %}
{% include custom/people-cards.html data=people full_width=false %}
