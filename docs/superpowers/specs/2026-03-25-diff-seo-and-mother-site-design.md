# Diff SEO And Mother Site Design

## Goal

Shift generic image-comparison search acquisition to `diff.gujin.tech` while repositioning `gujin.tech` as a lightweight multi-tool mother site.

## Context

- `diff.gujin.tech` is the product site and should become the main SEO surface for generic search terms.
- `gujin.tech` should remain useful, but as a brand and tool-directory site rather than the main landing surface for image-compare queries.
- The current `diff.gujin.tech` homepage should remain a pure tool surface with minimal friction.
- The current `gujin.tech` site still carries archived notes and old blog URLs that no longer match the intended direction.

## User-Approved Decisions

- Prioritize generic search traffic over brand-only traffic.
- Search results should prefer landing users on `diff.gujin.tech`.
- `diff.gujin.tech/` must stay a pure tool page rather than a long-form landing page.
- `diff.gujin.tech` may add only a very small number of dedicated landing pages.
- English and Chinese should use separate landing pages rather than a bilingual single page.
- `gujin.tech` should evolve into a multi-tool mother site.
- Old article URLs should be removed rather than hidden or preserved.

## Site Roles

### `diff.gujin.tech`

`diff.gujin.tech` is the product site and the primary SEO battlefield for generic queries such as image compare, compare screenshots, screenshot compare, 图片比对, and 截图对比.

Responsibilities:

- host the runtime tool at `/`
- host the primary generic-search landing pages
- convert search visitors into tool users with the shortest possible path
- own product-focused metadata, sitemap entries, and structured data

### `gujin.tech`

`gujin.tech` is the mother site for GuJin tools, not the main image-compare SEO target.

Responsibilities:

- present GuJin as the maker of public tools
- link to current tools, especially Image Compare
- host lightweight trust and support pages such as `about` and `privacy`
- provide a future-safe structure for multiple tools

It should not continue competing for the same generic image-compare terms as `diff.gujin.tech`.

## `diff.gujin.tech` Information Architecture

### Keep `/` as the runtime tool

The homepage remains the fast-entry workbench. It should not become a long editorial page and should continue to support immediate upload and comparison workflows.

### Add exactly two SEO landing pages

#### English landing page

- URL: `/image-compare-tool/`
- audience: English-language generic search traffic
- target query themes:
  - image compare tool
  - compare screenshots
  - compare two images
  - screenshot comparison tool

#### Chinese landing page

- URL: `/zh/image-compare/`
- audience: Chinese-language generic search traffic
- target query themes:
  - 图片比对
  - 截图对比
  - 图片比较工具
  - 截图比较工具

### Landing page content pattern

Each landing page should stay compact and product-focused:

- one clear H1 aligned to the target query cluster
- one concise value proposition explaining local, in-browser comparison
- one feature block covering overlay, diff view, alignment, zoom, and export
- one use-case block focused on screenshots, mockups, QA, and review
- a short FAQ
- a strong CTA back to `/`

These pages are not blog posts and should avoid drifting into article-style content.

## SEO Rules For `diff.gujin.tech`

### Metadata

The three URLs below need distinct metadata:

- `/`
- `/image-compare-tool/`
- `/zh/image-compare/`

Each page should have its own:

- `title`
- `meta description`
- canonical URL
- Open Graph and Twitter metadata where applicable

### Language signals

The English and Chinese landing pages should cross-reference each other with `hreflang` so search engines can distinguish language intent instead of treating them as duplicate pages.

### Structured data

The landing pages should expose product-oriented structured data, with `SoftwareApplication` as the baseline. FAQ content can also be marked up if the final copy includes a stable FAQ block.

### Sitemap

The `diff.gujin.tech` sitemap should include all three URLs:

- `https://diff.gujin.tech/`
- `https://diff.gujin.tech/image-compare-tool/`
- `https://diff.gujin.tech/zh/image-compare/`

## Internal Linking Strategy

### On `diff.gujin.tech`

- each landing page should prominently link to `/`
- `/` may include a very light secondary path such as “Learn more” without changing the pure-tool emphasis

### From `gujin.tech`

`gujin.tech` should link to:

- `https://diff.gujin.tech/`
- the dedicated landing pages when context is useful

It should not duplicate the same full query-targeting copy used on the `diff.gujin.tech` landing pages.

## `gujin.tech` Content Reset

### Keep the mother-site pages

Retain a small set of durable pages:

- home
- tools
- about
- privacy

These pages should describe GuJin as a maker of public tools, with Image Compare as the current flagship tool.

### Remove notes and old posts

The site should stop surfacing archived notes and should no longer carry the old blog as an active section.

Changes:

- remove the notes/archive section from the homepage
- remove `notes` from site navigation and internal links
- remove `notes.md`
- remove legacy `_posts/*`

### Legacy URL behavior

The intended outcome is that old article URLs disappear and return `404`.

`410 Gone` is not a design target because GitHub Pages does not provide a clean, low-friction way to manage per-URL `410` responses for this site shape.

## Copy Direction For `gujin.tech`

`gujin.tech` should emphasize:

- GuJin tools
- current public tools
- direct access to Image Compare
- trust and support information

It should de-emphasize:

- long explanatory Image Compare SEO copy
- archived-note positioning
- old blog identity

## Implementation Boundaries

### `pixel-diff-viewer-web`

Expected work:

- add two static landing pages inside the current deployment model
- update metadata and sitemap handling
- extend existing UI-shell tests so the new pages and metadata are covered

### `gujin.github.io`

Expected work:

- remove notes/archive UI and old post sources
- adjust home, tools, and about copy toward the mother-site role
- keep the site small and directory-oriented

## Verification Requirements

### Product site verification

Before completion, verify:

- `diff.gujin.tech/` remains a direct-entry tool page
- both new landing pages render correctly
- metadata is distinct per page
- sitemap contains the new landing pages
- automated checks cover the new page surfaces

### Mother site verification

Before completion, verify:

- the homepage no longer shows the notes/archive section
- `notes` is gone from navigation and internal entry points
- old article URLs are no longer generated by the site

## Post-Deployment Actions

After both repos are deployed:

- submit the updated `diff.gujin.tech` sitemap in Google Search Console
- request indexing for the new landing pages
- request re-indexing for updated `gujin.tech` core pages
- mirror the sitemap submission in Bing Webmaster Tools

## Out Of Scope

This design does not include:

- adding a blog strategy back into either site
- turning `diff.gujin.tech/` into a long-form marketing homepage
- adding more than the approved two landing pages
- building multilingual support across the runtime tool routes beyond the current app behavior

## Planning Note

Implementation planning should produce repo-scoped execution plans:

1. `pixel-diff-viewer-web` plan for the new `diff.gujin.tech` landing pages and SEO metadata
2. `gujin.github.io` plan for the mother-site reset and removal of notes/posts

That split keeps execution clear while preserving a single cross-site design.
