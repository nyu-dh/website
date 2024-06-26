---
title: Courses
layout: default
hero_image: '/assets/images/banners/courses.png'
subtitle: |
  The following courses include core and some of the elective courses in the Advanced Certificate in Digital Humanities, offered through the Graduate School of Arts and Sciences. Certificate courses are open to all graduate students at NYU, and through the consortium to PhD candidates at other institutions.
quick_links:
  - label: 'Current Semester'
    link: '#current-semester'
  - label: 'Upcoming Semester'
    link: '#upcoming-semester'
  - label: 'All Courses (Archive)'
    link: 'archive'
  - label: 'Affiliated Teaching Faculty'
    link: '/people/affiliated-faculty/'
hero_buttons:
  - label: GSAS Advanced Certificate in DH
    link: https://as.nyu.edu/departments/dh.html
---

{% assign current_semester =  site.data.courses | where: 'semester', site.semester.current %}
<h2 id="current-semester">{{ site.semester.current }}</h2>
{% if current_semester.size  > 0 %}
{% include cards/courses.html data=current_semester %}
{% else %}
No courses are currently posted for this semester. Check back!
{% endif %}

{% assign next_semester =  site.data.courses | where: 'semester', site.semester.next %}
<h2 id="upcoming-semester">{{ site.semester.next }}</h2>
{% if next_semester.size  > 0 %}
{% include cards/courses.html data=next_semester %}
{% else %}
No courses are currently posted for this semester. Check back!
{% endif %}