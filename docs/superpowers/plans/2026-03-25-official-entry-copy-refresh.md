# Official Entry Copy Refresh Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Reframe `gujin.tech` as the official GuJin tools entry point, with `Image Compare` as the current main tool and without internal site-structure jargon.

**Architecture:** Use one source-level copy regression script to guard the new tone and banned phrases. Rewrite shared metadata, header/footer framing, and the core content pages so the whole site speaks with one product-led voice.

**Tech Stack:** Jekyll, Liquid, Markdown, shell verification scripts

---

### Task 1: Strengthen Copy Regression Checks

**Files:**
- Modify: `scripts/check-mother-site-copy.sh`

- [ ] **Step 1: Expand the copy regression rules**

Add checks that require `diff.gujin.tech` mentions across the core pages and fail when internal jargon appears in shared chrome or content pages.

- [ ] **Step 2: Run the copy check to verify failure**

Run:
```bash
./scripts/check-mother-site-copy.sh
```

Expected: FAIL because the current site still contains terms such as `mother site`, `root site`, `stay small`, or `handoff page`

- [ ] **Step 3: Keep the check for later verification**

Do not weaken the new assertions during implementation.

### Task 2: Rewrite Shared Framing

**Files:**
- Modify: `_config.yml`
- Modify: `_includes/header.html`
- Modify: `_includes/footer.html`

- [ ] **Step 1: Update shared metadata and chrome copy**

Replace internal-site phrasing with official-entry language in:

- site description
- brand tag
- footer description

- [ ] **Step 2: Re-run the copy check**

Run:
```bash
./scripts/check-mother-site-copy.sh
```

Expected: still FAIL because page-level content has not been rewritten yet

### Task 3: Rewrite Core Pages

**Files:**
- Modify: `index.html`
- Modify: `tools.md`
- Modify: `diff.md`
- Modify: `about.md`
- Modify: `privacy.md`
- Modify: `app.md`

- [ ] **Step 1: Rewrite the homepage**

Make the homepage the official GuJin tools entry page, with `Image Compare` as the current main tool and direct paths to tools, overview, privacy, and about pages.

- [ ] **Step 2: Rewrite the tools directory**

Make `/tools/` read as the official directory for current tools rather than a note about site size or content strategy.

- [ ] **Step 3: Rewrite the Image Compare overview**

Make `/diff/` read as the official overview page for the tool and explain the relationship between `gujin.tech` and `diff.gujin.tech` in user language.

- [ ] **Step 4: Rewrite the support pages**

Update `about.md`, `privacy.md`, and `app.md` so they use the same official-entry tone and avoid internal jargon.

- [ ] **Step 5: Re-run the copy check**

Run:
```bash
./scripts/check-mother-site-copy.sh
```

Expected: PASS

### Task 4: Verify Site Consistency

**Files:**
- Modify: working tree only

- [ ] **Step 1: Run available verification**

Run:
```bash
./scripts/check-mother-site-copy.sh
./scripts/check-pages-sass-compat.sh
git diff --check
```

Expected: all commands pass

- [ ] **Step 2: Review the diff for copy consistency**

Run:
```bash
git diff -- _config.yml _includes/header.html _includes/footer.html index.html tools.md diff.md about.md privacy.md app.md scripts/check-mother-site-copy.sh
```

Expected: the wording consistently uses official-entry language across all touched pages
