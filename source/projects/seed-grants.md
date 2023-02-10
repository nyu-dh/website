---
title: NYU DH Seed Grant Projects
subtitle: 'Browse the amazing projects funded through our [NYU DH Seed Grant Program](/funding/seed-grants) by cohort year.'
layout: default
hero_image: '/media/banners/doodles/projects.png'
breadcrumbs:
  - name: Projects
    link: /projects
quick_links:
  - label: 2022 Cohort
    link: '#2022'
  - label: 2021 Cohort
    link: '#2021'
  - label: 2020 Cohort
    link: '#2020'
---
{% assign seeds = site.projects | where_exp: "i", "i.category contains 'Seed'" %}


<h2 id="2022">Funded for 2022 – 2023</h2>
{% assign seeds2022 = seeds | where: 'cohort_year', '2022' | sort: 'image' | reverse %}
{% include cards/projects.html data=seeds2022 %}

<h2 id="2021">Funded for 2021 – 2022</h2>
{% assign seeds2021 = seeds | where: 'cohort_year', '2021' | sort: 'image' | reverse %}
{% include cards/projects.html data=seeds2021 %}

<h2 id="2020">Funded for 2020 – 2021</h2>
{% assign seeds2020 = seeds | where: 'cohort_year', '2020' | sort: 'image' | reverse %}
{% include cards/projects.html data=seeds2020 %}
