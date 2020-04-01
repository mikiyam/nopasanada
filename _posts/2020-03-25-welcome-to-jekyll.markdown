---
layout: default

---

<small>{{ page.date | date: "%-d %B %Y" }}</small>
<h1>{{ page.yay cakes}}</h1>

<p class="view">by {{ page.author | default: site.author }}</p>

i ate cake today

{% if page.tags %}
  <small>tags: <em>{{ page.tags | join: "</em> - <em>" }}</em></small>
{% endif %}
