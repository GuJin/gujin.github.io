---
layout: page
title: Notes
permalink: /notes/
description: Archive of older technical notes and writing published on gujin.tech.
author: Gu Jin
---

These notes are older than the current tool-first direction of the site, but they stay online because they are still useful context and may still help readers landing from search.

## Archive

<div class="cf frame">
  {% for post in site.posts %}
    <article class="post" itemscope itemtype="http://schema.org/BlogPosting" role="article">
      <div class="article-item">
        <header class="post-header">
          <h2 class="post-title" itemprop="name"><a href="{{ post.url | prepend: site.baseurl }}" itemprop="url">{{ post.title }}</a></h2>
        </header>
        <section class="post-excerpt" itemprop="description">
          <p>{{ post.excerpt | strip_html | truncatewords: 40 }}</p>
        </section>
        <div class="post-meta">
          <time datetime="{{ post.date | date_to_long_string }}">{{ post.date | date_to_long_string }}</time>
        </div>
      </div>
    </article>
  {% endfor %}
</div>
