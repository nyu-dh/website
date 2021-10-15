---
title: NYU Research Technology Executive Committee on Digital Humanities
layout: page
---
{% assign committee = site.data.committee %}
{% assign size = committee.size %}
{% assign shuffled_committee = committee | sample: size %}
<ul class="unstyled">
{% for person in shuffled_committee %}
  <li>
  {% if person.link %}<a href="{{ person.link | absolute_url }}">{% endif %}
    <b>{{ person.name }}</b>
  {% if person.link %}</a>{% endif %}<br>
  {% for role in person.roles %}
    {{ role.title }}, {{ role.unit }}{% unless forloop.last %} & {% endunless %}
  {% endfor %}
  </li>
{% endfor %}
</ul>
