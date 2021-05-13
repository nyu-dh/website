---
title: Seed Grants
layout: page
---
NYU Research Technology has identified digital humanities as one of the University’s future areas of excellence. Provided in partnership with the [NYU Center for the Humanities](https://nyuhumanities.org/) and [NYU Libraries](https://library.nyu.edu), this is the second year of a multi-year granting program to identify and fund projects that can benefit the university community by creatively bridging humanistic scholarship with new forms of computation, digital publishing, and digitization.

Digital humanities scholarship takes a variety of forms, from algorithmic analysis to public scholarship; there are no restrictions in form or subject area that can be funded under this program. Additional resources may be made available for those proposing computationally intensive work utilizing NYU’s high performance computing cluster and similar [Research Technology resources](https://www.nyu.edu/research/navigating-research-technology.html). We especially welcome projects that give voice or expression to underrepresented communities; that engage with the urban fabric of the cities in which NYU has campuses; and that contribute to the emerging subfield of Global Digital Humanities.

## 2021 – 2022 DH Seed Grant Program
The NYU Center for the Humanities is currently accepting proposals for the 2021 – 2022 Digital Humanities Seed Grant Program.

Apply at [NYU Center for the Humanities website](https://nyuhumanities.org/opportunity/digital-humanities-seed-grants/) by **March 7, 2021**.

## 2020 – 2021 DH Seed Grant Program

The following projects are recipients of the inaugural round of Digital Humanities Seed Grant funding. These grants support the development of new research projects that analyze digital sources, apply algorithmic methods to humanities data, or create digital publications, exhibits, or websites. The Digital Humanities Seed Grant program, made possible by the Research Technology Faculty Advisory Board, builds upon NYU’s institutional capacity in Digital Humanities work.

{% assign seeds = site.projects | where: 'category', 'DH Seed Grant Recipient' %}
<ul>
{% assign seeds2020 = seeds | where: 'year', 2020 %}
{% for project in seeds2020 %}
  <li>
    <a href="{{ project.url | absolute_url }}"><b>{{ project.title }}</b></a><br>
    {%- for pi in project.pis -%}{{ pi.name }}, {{ pi.title }}{% unless forloop.last %} & {% endunless %}{%- endfor -%}
  </li>
{% endfor %}
</ul>
