---
title: Tags
subtitle: ''
layout: default
hero_image: '/media/banners/doodles/projects.png'
breadcrumbs:
  - name: Projects
    link: /projects

---
{% for tag in site.project_tags %}[#{{ tag.slug }}]({{ tag.url | absolute_url }}){% unless forloop.last %} / {% endunless %}{% endfor %}
