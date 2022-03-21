---
layout: default
home: true
title: Home
---

{% include custom/news-cards.html data=site.news limit=6 %}

<br>

<p class="has-text-centered">
  <a href="{{ '/news' | absolute_url }}">
    <button class="button is-medium is-info">View All News</button>
  </a>
</p>
