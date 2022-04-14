---
layout: default
home: true
hero_image: '/assets/images/coding-2(1).png'
title: Home
---

{% include custom/news-cards.html data=site.news limit=6 %}

<br>

<p>
  <a href="{{ '/news' | absolute_url }}">
    <button class="button is-medium is-info">View All News</button>
  </a>
</p>
