---
title: Graduate Student Fellowship Projects
layout: page
breadcrumbs:
  - name: Projects
    link: /projects
---
<div class="columns is-multiline">
  {% assign projects = site.data.projects %}
  {% for project in projects %}
  <div class="column is-half">
    <div class="card">
      <div class="card-content">
        <div class="media">
          <div class="media-left">
            <figure class="image is-64x64">
              <img src="{{ project.image | default: 'https://bulma.io/images/placeholders/64x64.png' }} " alt="{{ project.name }} image">
            </figure>
          </div>
          <div class="media-content">
            <p class="title is-6">{{ project.title }}</p>
            <p class="subtitle is-7 pt-1">{{ project.titles }}
            {% if project.link %}
              &nbsp;&nbsp;<a href="{{ project.link | absolute_url }}"><i class="fas fa-external-link-alt"></i></a>
            {% endif %}
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  {% endfor %}
</div>
