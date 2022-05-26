---
title: NYU DH Seed Grant Projects
subtitle: 'Browse the amazing projects funded through our [NYU DH Seed Grant Program](/funding/seed-grants) by cohort year.'
layout: default
breadcrumbs:
  - name: Projects
    link: /projects
contents_links:
  - label: 2022 Cohort
    link: '#2022'
  - label: 2021 Cohort
    link: '#2021'
  - label: 2020 Cohort
    link: '#2020'
---
{% assign seeds = site.projects | where_exp: "i", "i.category contains 'Seed'" %}

<div class="post-content">
  <h2 id="2022" class="title mb-4">Funded for 2022 – 2023</h2>
</div>
{% assign seeds2022 = seeds | where: 'cohort_year', '2022' %}
{% include cards/projects.html data=seeds2022 full_width=false %}
<hr>

<div class="post-content">
  <h2 id="2021" class="title mb-4">Funded for 2021 – 2022</h2>
</div>
{% assign seeds2021 = seeds | where: 'cohort_year', '2021' %}
{% include cards/projects.html data=seeds2021 full_width=false %}
<hr>

<div class="post-content">
  <h2 id="2020" class="title mb-4">Funded for 2020 – 2021</h2>
</div>
{% assign seeds2020 = seeds | where: 'cohort_year', '2020' %}
{% include cards/projects.html data=seeds2020 full_width=false %}
