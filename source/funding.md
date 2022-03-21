---
title: Grants & Fellowships
layout: page
cards:
  - name: Faculty Seed Grant Program
    description: ""
    link: 'funding/seed-grants'
  - name: Graduate Student Fellowship Program
    description: 'Learn more about the people behind the seed grants and other projects.'
    link: 'funding/grad-student-fellowships'
---

<div class="columns is-multiline">
  {% for card in page.cards %}
  <div class="column is-one-third">
    <div class="card">
      <div class="card-content">
        <p class="title is-4">{{ card.name }}</p>
        <p class="subtitle is-6">{% if card.description.size %}{{ card.description }}
        &nbsp;&nbsp;{% endif %}<a href="{{ card.link | absolute_url }}">
            <i class="fas fa-external-link-alt"></i>
          </a>
        </p>
      </div>
    </div>
  </div>
  {% endfor %}
</div>
