---
layout: page
title: Gujin Diff
permalink: /diff/
description: Gujin Diff is a local image compare tool for screenshots, design review, and visual diff checks in the browser.
author: Gu Jin
---

Gujin Diff is a local-first image compare tool for screenshots, design references, and visual checks.

It is built for workflows where you want to compare two images quickly, inspect differences clearly, and keep the files on your own device.

<p><a class="button" href="https://diff.gujin.tech/">Open Gujin Diff</a> <a class="button secondary" href="{{ "/privacy/" | prepend: site.baseurl }}">Read privacy notes</a></p>

## What it does

- Compare two images side by side
- Switch between overlay and diff views
- Adjust alignment manually for more accurate checks
- Zoom and pan around the comparison
- Export the current view

## Good fits

- Checking design mocks against implementation screenshots
- Spotting UI regressions during review
- Comparing different revisions of the same visual asset
- Running a quick browser-based image diff without setting up local tooling

## Why it lives on a subdomain

`gujin.tech` works as the discovery layer: documentation, links, notes, and landing pages.

`diff.gujin.tech` is the runtime tool. Separating the two keeps the tool URL short while letting the root site carry more crawlable supporting content.

## FAQ

### Does Gujin Diff upload my images?

The tool is designed to process images in the browser. See the [privacy page](/privacy/) for the root-site explanation and tool-specific notes.

### Is it free?

Yes. Gujin Diff is currently public and free to use.

### What images is it for?

The main target is screenshots, UI captures, design references, and similar visual assets where side-by-side or diff inspection is useful.
