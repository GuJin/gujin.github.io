---
layout: page
title: Notes
heading: Archived notes
permalink: /notes/
description: Archived technical notes published on gujin.tech before the site shifted toward tool-first pages.
kicker: Notes
---

These notes are older than the current tool-first direction of the site, but they remain online because they can still help people arriving from search.

<div class="note-list note-list--archive">
  {% for post in site.posts %}
    <article class="note-card">
      <p class="note-card__date">{{ post.date | date: "%B %-d, %Y" }}</p>
      <h2><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h2>
      <p>{{ post.excerpt | strip_html | truncatewords: 40 }}</p>
    </article>
  {% endfor %}
</div>
