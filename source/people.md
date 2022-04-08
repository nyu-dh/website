---
title: People
layout: default
cards:
  - name: Executive Committee
    description: "See the DH team convened by IT's Research Technology and the Faculty Advisory Board"
    link: 'people/executive-committee'
  - name: Project PIs
    description: 'Learn more about the people behind the seed grants and other projects.'
    link: 'people/pis'
  - name: 'Affiliated Faculty'
    description: 'Browse additional faculty teaching and producing research in the field.'
    link: 'people/affiliated-faculty'
---

<!-- {% assign people = site.data.people | where_exp: "p", "p.site_roles contains 'proj_pi'" %} -->

{% include custom/people-cards.html data=site.data.people full_width=true %}
