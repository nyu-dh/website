---
title: NYU DH Seed Grants
layout: default
subtitle: |
  The multi-year seed grants program identifies and funds faculty-led projects that creatively bridge humanistic scholarship with new forms of computation, digital publishing, and digitization.
contents_links:
  - label: 'Seed Grant News'
    link: '#seed-grant-news'
  - label: 'Funded Projects'
    link: '#funded-projects'
  - label: 'FAQ'
    link: 'faq'
  - label: 'Grant Cycle Information'
    link: 'grant-cycles'
---

<div class="container">
  <div class="content mb-6" markdown="1">
The Center for the Humanities, NYU Libraries, and NYU Research Technology fund the initial development of new research projects that will analyze digital sources, apply algorithmic methods to humanities data, or create digital publications, exhibits, or websites. The goal of the program is to seed projects that may go on to receive greater funding from other sources or otherwise build NYU’s institutional capacity in Digital Humanities work.

Grants may range in size between $5,000 and $20,000. Collaborative projects are encouraged, but must include at least one NYU faculty member in the humanities. Additional resources may be made available for those proposing computationally intensive work utilizing NYU’s high performance computing cluster and similar [Research Technology resources](https://www.nyu.edu/research/navigating-research-technology.html). We especially welcome projects that give voice or expression to underrepresented communities; that engage with the urban fabric of the cities in which NYU has campuses; and that contribute to the emerging subfield of Global Digital Humanities.
  </div>
</div>

<section class="section full-width is-bg-alt">
  <div class="container">
    <h2 class="is-size-3 pb-6" id="seed-grant-news">Seed Grant News</h2>

    {% assign seed_news = site.news | where_exp: "i", "i.tags contains 'seed_grants'" %}
    {% include custom/news-cards.html data=seed_news limit=3 %}

    <p>
      <a href="{{ '/news' | absolute_url }}" class="button is-medium is-info">View All</a>
    </p>
  </div>
</section>

<section class="section full-width">
  <div class="container">
    <div class="content mb-6">
      <h2 class="is-size-3" id="funded-projects">Funded Projects</h2>

      {% assign seeds2022 = site.projects | where: 'cohort_year', '2022' | where_exp: "i", "i.category contains 'Seed'" %}
      {%- if seeds2022.size > 0 -%}
        <p class="is-size-4">2022 - 2023</p>
        <ul>
          {%- for p in seeds2022 -%}
            <li><a href="{{ p.url | absolute_url }}">
              {{ p.title }}{%- if p.subtitle.size > 0 -%}:&nbsp;{{ p.subtitle }}{%- endif -%}
            </a></li>
          {%- endfor -%}
        </ul>
      {%- endif -%}

      {% assign seeds2021 = site.projects | where: 'cohort_year', '2021' | where_exp: "i", "i.category contains 'Seed'" %}
      {% if seeds2021.size > 0 -%}
        <p class="is-size-4">2021 - 2022</p>
        <ul>
          {% for p in seeds2021 %}
            <li><a href="{{ p.url | absolute_url }}">
              {{ p.title }}{%- if p.subtitle.size > 0 -%}:&nbsp;{{ p.subtitle }}{%- endif -%}
            </a></li>
          {% endfor %}
        </ul>
      {% endif %}

      {% assign seeds2020 = site.projects | where: 'cohort_year', '2020' | where_exp: "i", "i.category contains 'Seed'" %}
      {% if seeds2020.size > 0 -%}
        <p class="is-size-4">2020 - 2021</p>
        <ul>
          {% for p in seeds2020 %}
            <li><a href="{{ p.url | absolute_url }}">
              {{ p.title }}{%- if p.subtitle.size > 0 -%}:&nbsp;{{ p.subtitle }}{%- endif -%}
            </a></li>
          {% endfor %}
        </ul>
      {% endif %}
    </div>
  </div>
</section>
