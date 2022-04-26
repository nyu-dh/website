---
title: Relevant Courses
layout: page
subtitle: |
  The following courses include core and some of the elective courses in the [Advanced Certificate in Digital Humanities](/curriculum/certificate/), offered through the Graduate School of Arts and Sciences.

  Certificate courses are open to all graduate students at NYU, and through the consortium to PhD candidates at other institutions.
contents_links:
  - label: 'Current Semester'
    link: '#current-semester'
  - label: 'Upcoming Semester'
    link: '#upcoming-semester'
  - label: 'All Courses (Archive)'
    link: 'archive/'
---

<h2 id="current-semester">{{ site.semester.current }}</h2>
{% assign current_semester =  site.data.courses | where: 'semester', site.semester.current %}

### DH Certificate Courses
{% assign current_core = current_semester | where: 'program', 'DHSS' %}
{% include custom/course-cards.html data=current_core %}

### Elective Courses
{% assign current_elective = current_semester | where_exp: "item", "item.program != 'DHSS'" %}
{% include custom/course-cards.html data=current_elective %}

<h2 id="upcoming-semester">{{ site.semester.next }}</h2>
{% assign next_semester =  site.data.courses | where: 'semester', site.semester.next %}

### DH Certificate Courses
{% assign next_core = next_semester | where: 'program', 'DHSS' %}
{% include custom/course-cards.html data=next_core %}

### Elective Courses
{% assign next_elective = next_semester | where_exp: "item", "item.program != 'DHSS'" %}
{% include custom/course-cards.html data=next_elective %}
