---
title: NYU DH Graduate Fellowship Projects
subtitle: 'Browse the amazing projects funded through our [NYU DH Graduate Student Fellowship Program](/funding/grad-fellowships) by cohort year.'
layout: default
hero_image: '/media/banners/doodles/projects.png'
breadcrumbs:
  - name: Projects
    link: /projects
contents_links:
  - label: 2022 Cohort
    link: '#2022'
  - label: 2021 Cohort
    link: '#2021'
---
{% assign fellows = site.projects | where_exp: "i", "i.category contains 'Fellowship'" %}

<h2 id="2022">2022 Cohort</h2>
{% assign fellows2022 = fellows | where: 'cohort_year', '2022' %}
{% include cards/projects.html data=fellows2022  %}

<h2 id="2021">2021 Cohort</h2>
{% assign fellows2021 = fellows | where: 'cohort_year', '2021' %}
{% include cards/projects.html data=fellows2021 %}

