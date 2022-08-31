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
  - label: 'Affiliated Teaching Faculty'
    link: '/people/affiliated-faculty/'
---
{% assign current_semester =  site.data.courses | where: 'semester', site.semester.current %}
{% if current_semester.size  > 0 %}
<h2 id="current-semester">{{ site.semester.current }}</h2>

{% include cards/courses.html data=current_semester %}
{% endif %}

{% assign next_semester =  site.data.courses | where: 'semester', site.semester.next %}
{% if next_semester.size  > 0 %}
<h2 id="upcoming-semester">{{ site.semester.next }}</h2>

{% include cards/courses.html data=next_semester %}
{% endif %}
