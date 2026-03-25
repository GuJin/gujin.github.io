# Official Entry Copy Design

## Goal

Rewrite `gujin.tech` so it reads as the official GuJin entry point for current tools, product pages, and support information, with `Image Compare` as the current main tool.

## Context

- `diff.gujin.tech` is the live product surface for `Image Compare`.
- `gujin.tech` should support that product without competing with it for the same role.
- The current site copy still uses internal framing such as `mother site`, `root site`, `stay small`, `content archive`, and `handoff page`.
- Those phrases explain information architecture to the maker, but they do not help visitors decide where to go or why the two domains exist.

## Approved Direction

- Use the product-led official-entry direction.
- Present `gujin.tech` as the official GuJin site for tool access, product pages, and support information.
- Keep `Image Compare` as the current main tool throughout the site.
- Explain the split between `gujin.tech` and `diff.gujin.tech` in user language, not SEO language.
- Remove internal-site-governance language from user-facing pages.

## Copy Principles

### Speak to user tasks

The copy should answer:

- what this site is
- where the live tool is
- what support information lives here
- what the visitor should click next

### Avoid internal jargon

Do not use these phrases in user-facing copy:

- `mother site`
- `root site`
- `stay small`
- `content archive`
- `handoff page`

### Keep the domain split clear

- `diff.gujin.tech` is where the live `Image Compare` tool runs
- `gujin.tech` is where official overview, about, privacy, and tool-directory pages live

That explanation should be short, direct, and practical.

## Site-Wide Messaging

Primary message:

`gujin.tech` is the official home for GuJin tools, product pages, and support information.

Secondary message:

`Image Compare` is the current main tool and runs at `diff.gujin.tech`.

Support message:

Use this site to browse current tools, read overviews, and check privacy or support information.

## Page Roles

### Home

- Position the site as the official GuJin tools entry point
- Feature `Image Compare` first
- Offer direct navigation to tools, overview, privacy, and about pages

### Tools

- Act as the official directory for current GuJin tools
- Keep `Image Compare` as the lead card
- Point visitors to the live tool and related official pages

### Image Compare Overview

- Act as the official overview page for `Image Compare`
- Summarize what the tool does and who it is for
- Send ready users to `diff.gujin.tech`
- Explain that overview and privacy information live on `gujin.tech`

### About

- Explain what GuJin builds
- Explain what this site is for
- Reinforce `Image Compare` as the current main tool

### Privacy

- Explain privacy expectations for `gujin.tech`
- Explain the intended local-only workflow for `Image Compare`
- Avoid framing the page around internal site structure

### App

- Serve as a compatibility page for older `/app/` links
- Redirect users toward the current official entry points

### Header And Footer

- Use `official tools` or equivalent branding
- Reinforce access and support, not site-size philosophy

## Metadata Direction

- Replace `mother site`, `root site`, and `public workflows` phrasing in page descriptions
- Use `official`, `tools`, `overview`, `support`, and `Image Compare` language instead

## Verification

Before completion:

- core pages should still mention `diff.gujin.tech`
- internal jargon should be absent from user-facing core pages
- copy checks should pass
- Sass compatibility checks should still pass

## Out Of Scope

- changing layout structure beyond what the current copy requires
- changing the live `diff.gujin.tech` product copy
- adding new tools or new routes
