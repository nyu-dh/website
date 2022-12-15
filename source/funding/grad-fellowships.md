---
title: NYU DH Graduate Student Fellowships
layout: default
subtitle: |
  This annual DH Fellowship program supports selected NYU graduate students as they develop innovative digital humanities projects. Successful applicants receive mentoring, a $5,000 stipend, and participate in a cohort to develop their skills and sharpen their ideas.
hero_buttons:
  - label: "2023 Applications Open – Apply Now!"
    link: "https://nyuhumanities.org/opportunity/digital-humanities-graduate-student-summer-fellowships/"
    external: true
contents_links:
  - label: "Current and Past Fellows"
    link: "#past-fellows"
  - label: "FAQ"
    link: "faq"
  - label: Grant Cycle Information
    link: "grant-cycles"
---

<div class="container">
  <div class="content post-content mb-6" markdown="1">
[The Center for the Humanities](https://nyuhumanities.org/), [NYU Libraries](https://library.nyu.edu/), and [NYU Research Technology](https://www.nyu.edu/research/navigating-research-technology.html) annually fund between 8 and 10 Digital Humanities Graduate Student Fellows. Students apply with their own proposed project, which might involve–for example–engaging with digital humanities methods as the basis for a dissertation chapter or article, or building a digital public humanities project or exhibit. Project work will take place during the summer, and participants will report on work completed at an annual fall showcase event.

Proposals are judged by a faculty committee based on the merit of the project, its contribution to the applicant’s course of study, and its feasibility in the timeline proposed. We especially welcome projects that give voice or expression to underrepresented communities; that engage with the urban fabric of the cities in which NYU has campuses; and that contribute to the emerging subfield of Global Digital Humanities.

**Funding**

Fellows receive a taxable stipend of $5,000 for participating in the program, and are expected to dedicate approximately 300 hours for the fellowship during the summer months (June-August). All members of the fellowship cohort are expected to participate in project development sessions during that summer as part of their total hours, and can receive individual mentorship and technical guidance as needed.

**Eligibility**

Graduate students in the humanities from all NYU schools, including NYU Global Sites, are eligible. To qualify, they must have completed 16 credits by June 1 and maintain active matriculation at NYU through September 1 of the year they apply. Cohort sessions may be attended remotely. Faculty-led projects, including those with graduate researchers, should be supported under the [Digital Humanities Seed Grants](/funding/seed-grants/).

  </div>
</div>

<hr>

<section class="section full-width">
  <div class="container">
    <div class="content post-content mb-6">
      <h2 class="is-size-3" id="past-fellows">Current and Past Fellows</h2>

      {% assign fellow2022 = site.projects | where: 'cohort_year', '2022' | where_exp: "i", "i.category contains 'Fellowship'" %}
      {%- if fellow2022.size > 0 -%}
        <h3 class="is-size-4">2022</h3>
        <ul>
          {%- for p in fellow2022 -%}
            {%- assign piid = p.pis.first -%}
            {%- assign pi = site.data.people | find: 'pid', piid %}
            <li>
              {%- if pi.size -%}<b>{{ pi.name }}</b>, {{ pi.titles }}&nbsp;—&nbsp;{%- endif -%}
              <a class="is-italic" href="{{ p.url | absolute_url }}">
                {{ p.title }}{%- if p.subtitle.size > 0 -%}:&nbsp;{{ p.subtitle }}{%- endif -%}
              </a>
            </li>
          {%- endfor -%}
        </ul>
      {%- endif -%}

      {% assign fellow2021 = site.projects | where: 'cohort_year', '2021' | where_exp: "i", "i.category contains 'Fellowship'" %}
      {% if fellow2021.size > 0 -%}
        <h3 class="is-size-4">2021</h3>
        <ul>
        {%- for p in fellow2021 -%}
          {%- assign piid = p.pis.first -%}
          {%- assign pi = site.data.people | find: 'pid', piid %}
          <li>
            {%- if pi.size -%}<b>{{ pi.name }}</b>, {{ pi.titles }}&nbsp;—&nbsp;{%- endif -%}
            <a class="is-italic" href="{{ p.url | absolute_url }}">
              {{ p.title }}{%- if p.subtitle.size > 0 -%}:&nbsp;{{ p.subtitle }}{%- endif -%}
            </a>
          </li>
        {%- endfor -%}
        </ul>
      {% endif %}

    </div>

  </div>
</section>
