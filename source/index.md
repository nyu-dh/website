---
layout: default
home: true
hero_image: '/media/banners/pots-test.jpg'
title: Computation + Collaboration + Critique
---
<div class="container">
<h2 class="title is-size-4 mb-4">Announcements</h2>
</div>


{% assign announcements=site.news | where: 'category', 'announcement' %}
{% include cards/news.html id='1' data=announcements columns=2 %}


<div class="container">
<h2 class="title is-size-4 mb-4">Featured News</h2>
</div>


{% assign posts=site.news | where: 'category', 'post' %}
{% include cards/news.html id='2' data=posts %}


{% comment %}
<div class ="content" markdown="1">

### Values

- Can we take this offline. Mobile friendly that's mint, well done, and prepare yourself to swim with the sharks horsehead offer. 
- Circle back can you champion this, yet please use "solutionise" instead of solution ideas! :) nobody's fault it could have been managed better how much bandwidth do you have. 
- Deploy to production back-end of third quarter. 
- Unlock meaningful moments of relaxation finance golden goose hop on the bandwagon, nor what the highlights. 
- Quick win what are the expectations, nor please advise soonest.
- What's the status on the deliverables for eow?
- We need to build it so that it scales cc me on that, for digital literacy come up with something buzzworthy push back on-brand but completeley fresh, or low-hanging fruit.


</div>

<hr>
{% endcomment %}

<div class="container">
<h2 class="title is-size-4 mb-4">Featured Projects</h2>
</div>

{% assign featured_projects = site.projects | where: 'featured', true | sort: 'order' %}
{% include cards/projects.html data=featured_projects limit=3 %}
