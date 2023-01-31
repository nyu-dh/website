---
layout: default
home: true
hero_image: '/media/banners/pots-test.jpg'
title: Computation x Collaboration x Critique
---

<style>
    .block {
        padding: 2rem;
        margin-bottom: 4rem;
    }
</style>


<div class="container is-fluid block">
<div class ="content">
<h2 class="title">Announcements</h2>


{% assign announcements=site.news | where: 'category', 'announcement' %}
{% include cards/news.html data=announcements limit=2 columns=2 %}
</div>
</div>


<div class="container is-fluid block">
<div class ="content">
<h2 class="title">Featured News</h2>


{% assign posts=site.news | where: 'category', 'post' %}
{% include cards/news.html data=posts limit=3 %}

</div>
</div>

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

<div class="container is-fluid block">
<div class ="content">
<h2 class="title">Featured Projects</h2>

{% assign featured_projects = site.projects | where: 'featured', true | sort: 'order' %}
{% include cards/projects.html data=featured_projects limit=3 %}
</div>
</div>