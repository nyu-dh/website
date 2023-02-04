---
title: News + Events
layout: default
contents_links:
  - label: "Announcements"
    link: "#announcements"
  - label: "Highlights"
    link: "#highlights"
  - label: "Events"
    link: "#events"
---

<div class="container">
<div class="content">
<h2 id="highlights">Highlights</h2>
</div>
</div>

{% assign posts=site.news | where: 'category', 'highlight' %}
{% include cards/news.html data=posts %}

<div class="container">
<div class="content">
<h2 id="announcements">Announcements</h2>
</div>
</div>

{% assign announcements=site.news | where: 'category', 'announcement' %}
{% include cards/news.html data=announcements %}

<div class="container">
<div class="content">
<h2 id="events">Events</h2>
</div>
</div>

{% assign events=site.news | where: 'category', 'event' %}
{% include cards/news.html data=events %}