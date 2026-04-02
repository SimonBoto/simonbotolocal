---
uid: CGPT-0005
type: chatgpt-archive
title: "Tracking Social Media Metrics"
date: 2026-01-30
source: ChatGPT conversation history
aliases: CGPT-0005]
tags: [chatgpt-archive, technology]
status: archived
---

# Tracking Social Media Metrics

> **Date:** January 30, 2026  
> **Platform:** ChatGPT  
> **Messages:** 16  
> **ID:** 697c45d5

---

## Themes
- Technology

---

## Conversation


### 1. **Simos:**

How can we track other fb YouTube and insta profiles views reactions etc throughout a certain  period?

---

### 2. **ChatGPT:**

I’ll outline the realistic ways to monitor competitors’ Facebook/Instagram/YouTube performance over a time window—what you can measure publicly, the best tools (free + paid), and a simple workflow + spreadsheet schema to keep it clean and repeatable.

---

### 3. **ChatGPT:**

You can track **other people’s Facebook/Instagram/YouTube performance over a period**, but with one big caveat:

- You **cannot** see a competitor’s *internal* metrics like **profile views, reach, impressions, story viewers, saves-by-source, link clicks**, etc. Those are only visible to the account owner (or via authorized access through official APIs). Meta’s Insights endpoints are designed for **an app user’s own professional accounts**, not random third-party accounts. citeturn0search1  
- You *can* track **public signals** reliably: follower/subscriber counts, posting frequency, likes/comments, public video views, and sometimes shares.

Here are the clean (and non-sketchy) ways to do it.

## What you can track (by platform)

**Instagram / Facebook (competitors)**
- Public: follower count, posts/reels published, likes/comments per post, video view counts (where shown), page rating/reviews (FB), visible share counts (in some contexts).
- Not public: profile views, reach/impressions, story views, most saves, audience demographics.

**YouTube (competitors)**
- Public: subscribers, total channel views, total videos, per-video views/likes/comments, upload cadence.
- These are available via the **YouTube Data API** (channel `statistics.viewCount`, etc.). citeturn0search2

## Three practical tracking setups (choose your level)

### 1) Simple + accurate: “Snapshot tracking” (manual or semi-manual)
Best when you track 5–30 competitor accounts.

**Workflow**
1. Pick a period (e.g., Jan 1 → Jan 31).
2. Record a baseline snapshot on day 1:
   - Followers/subscribers
   - Total channel/page views (YouTube)
   - Last 10 posts’ engagement (likes/comments/views)
3. Repeat weekly (or daily if you’re intense).
4. Compute deltas: growth, avg engagement per post, posting frequency.

This is boring… but it’s the “scientific method” version: consistent measurement beats fancy dashboards if you do it cleanly.

### 2) Competitive analytics tools (fastest if you’re doing this regularly)
These tools specialize in **head-to-head competitive tracking** for public metrics.

- **Rival IQ**: built explicitly for competitive social analytics, alerts, and reports; also offers free head-to-head reports. citeturn0search0turn0search4  
- **Dash Social / Talkwalker etc.** (more “suite/enterprise” territory): often positioned for competitor analysis + social listening. citeturn0search10  

What you’ll typically get:
- Follower growth charts over time
- Engagement rate benchmarking
- Top posts (theirs vs yours)
- Posting frequency and content mix
- Sometimes paid/boosted post detection (tool-dependent)

### 3) Programmatic (APIs) for automation
Best if you want a pipeline.

- **YouTube:** use the YouTube Data API to pull channel + video statistics (subscribers, total views, etc.). citeturn0search2  
- **Instagram/Facebook:** official Insights access is effectively **for accounts that authorize you** (your own brands/clients), not competitors. citeturn0search1  

If you want “competitor automation” on IG/FB, you usually end up relying on third-party providers who collect public data (and you need to be careful about terms/compliance).

## A good KPI set (so you’re not drowning in numbers)

Track these per account per week:

- **Audience size:** followers/subscribers
- **Growth:** Δ followers/week, % growth/week
- **Output:** posts/week, reels/week, shorts/week
- **Engagement per post:** (likes + comments) average
- **Engagement rate (simple):** (avg engagements per post) / followers  
- **Video performance:** median views per video (better than mean), view velocity (views in first 48h if you snapshot)

The secret sauce: **normalize by audience size**. Otherwise big accounts always “win” just by being big.

## Spreadsheet schema (copy this structure)
One row per **account per date** (weekly snapshots are enough):

- Date
- Platform (IG/FB/YT)
- Handle/URL
- Followers/Subscribers
- Total Posts/Videos
- Total Views (YT)
- Posts in last 7 days
- Avg likes (last 10 posts)
- Avg comments (last 10 posts)
- Avg views (last 10 videos where relevant)
- Notes (campaigns, giveaways, collabs, controversies—yes, science includes gossip metadata)

Then compute:
- Weekly follower growth = Followers(today) − Followers(last snapshot)
- Engagement rate = (Avg likes + Avg comments) / Followers

## Two “don’t do this” warnings (so you don’t get rate-limited or banned)
- Don’t rely on shady scrapers that require your login cookies or promise story/profile-view data for competitors. That’s where accounts get flagged.
- Don’t obsess over single-post spikes (giveaways, paid boosts, controversy). Track **medians** + **trends**.

If you tell me roughly how many competitor accounts you want to track (e.g., 10 vs 200) and whether you want **a manual system or an automated pipeline**, I can give you the best exact setup (tools + cadence + KPI template) without extra fluff.

---

### 4. **Simos:**

Just want to record the process of only one. Not more.  Over all profiles. But wanna see how the last 18 months have been going 

---

### 5. **ChatGPT:**

Cool — with **one** brand/person to track across **IG + FB + YouTube**, and you want a **retroactive 18-month story**.

Key reality check (so you don’t waste time): for accounts you **don’t own**, you generally **cannot** get true historical **profile views / reach / impressions** for IG/FB. That data is private to the account owner via Meta Insights. citeturn0search1  
So the “18 months” you *can* reconstruct reliably is:

- **Content performance over time** (likes/comments/views per post/video, posting frequency, best formats)
- **Audience size trend** *if a third party has been tracking it* (much easier on YouTube than IG/FB)

Here’s the cleanest approach that actually works.

---

## The fastest “18-month report” workflow (one profile, all platforms)

### Step 1) YouTube: get real historical growth (usually easiest)
Use **Social Blade** for the channel. It provides daily/weekly history and charts for subscribers/views for many channels. citeturn0search8turn0search0

What you’ll extract for the last 18 months:
- Subscribers over time
- Total views over time
- Upload frequency
- Top videos in that window (by views)

This gives you a real “how it’s been going” curve, not just today’s numbers.

### Step 2) Instagram + Facebook: build the 18-month “content performance timeline”
You won’t get “profile views,” but you *can* get a solid longitudinal view by analyzing **posts within the date range**.

A practical tool for this is **Popsters**: it can analyze **public pages** and filter/compare performance by date range and export the post list. citeturn0search3turn0search23turn0search7

What you’ll extract (last 18 months):
- Post count per week/month (cadence)
- Likes/comments (and views where shown) per post
- Engagement rate proxies (engagement per post / current followers if you have them)
- Best-performing content types (reels vs images vs carousels, etc.)

**Important nuance:** those likes/comments/views are **current totals** on old posts, not “as-of that week.” It’s still very useful for strategy, but it’s not a perfect historical snapshot.

### Step 3) If you *really* want follower growth for IG/FB over 18 months
Only possible if:
1) a tool has been tracking that account already, or  
2) you reconstruct it from archived snapshots.

Options:
- **Social Blade** also claims Instagram/Facebook tracking for many creators (coverage varies). citeturn0search8turn0search4  
- Influencer/IG analytics tools sometimes show competitor “growth” estimates (depends on whether they already monitor the profile). Example: Not Just Analytics positions itself as able to analyze and compare profiles. citeturn0search1  
- For “forensics mode”: **Wayback Machine** snapshots of the profile header (when available) can sometimes show past follower counts (hit-or-miss).

If none of those have history, then follower growth for IG/FB is basically **not recoverable** retroactively.

---

## What your final output should look like (simple but powerful)
For each platform, build a monthly table for the last 18 months:

**YouTube**
- Subs (start/end of month)
- Views gained that month
- Videos uploaded
- Top 3 videos that month (views)

**Instagram / Facebook**
- Posts published that month
- Median likes/comments per post (median beats mean—less distorted by viral spikes)
- Top 5 posts that month (engagement)
- Format mix (% reels vs static, etc.)

Then you can summarize:
- “Growth phases” (flat / acceleration / decline)
- What content types correlate with better months
- Whether cadence changed
- Which topics consistently worked

---

## One small “gotcha” worth knowing
Meta used to have CrowdTangle for public content tracking, but it was shut down in 2024 and replaced with more limited access tooling (mainly for qualified researchers), so it’s not a practical solution for you. citeturn0search10turn0search2turn0search6

---

If you share just the **handle/URLs** of the IG, FB page, and YouTube channel (no login needed), I can tell you the most likely “best source” for each (e.g., Social Blade will work for YT almost always; for IG/FB I’ll point you to the most reliable way to extract the last 18 months of posts cleanly).

---

### 6. **Simos:**

https://www.facebook.com/share/1BtnUcc3Tm/?mibextid=wwXIfr

---

### 7. **ChatGPT:**

I’ll open that Facebook link, identify the page/profile behind it, then outline the best way to reconstruct an 18-month timeline (posts, engagement, growth proxies) across FB/IG/YT with exportable data.

---

### 8. **ChatGPT:**

Perfect — one profile, across FB + IG + YouTube, and you want an **18-month backward-looking timeline**.

One annoying physics law first: for accounts you **don’t own**, you *can’t* retrieve “profile views / reach / impressions” historically on Facebook/Instagram. That data lives inside Meta Insights and is not public. What you *can* reconstruct well is **posting cadence + public engagement + public video views**, and on YouTube you can often get **true historical subscriber/view curves**. (Meta Insights access limits are by design.) citeturn3search3

### Why I can’t open your FB share link here
Facebook is currently blocking/throttling automated fetches on my side, so I can’t resolve the share URL into the actual Page name/ID right now. (You can still do the tracking plan below; you just need the *canonical* Page URL.) citeturn2search0

---

## Step 1 — Turn that “share” link into the real Page URL (30 seconds)
On iPhone:
1. Open your link in **Safari**.
2. Let it fully load/redirect.
3. Tap the address bar → **copy the final URL** (it will look like `facebook.com/SomePageName` or `facebook.com/profile.php?id=...`).

That “final URL” is what tools need. Share links are just wrappers.

---

## Step 2 — Build the 18-month timeline (the simplest tool stack)

### A) YouTube (best historical data)
Use **Social Blade** for the YouTube channel. It commonly shows daily/weekly history for subscribers and views. citeturn3search0turn3search4turn3search8  
What you’ll pull (last 18 months):
- Subscriber curve (growth phases)
- Views curve
- Upload frequency

### B) Facebook + Instagram (public “content performance over time”)
Use **Popsters** or **Fanpage Karma**:
- Popsters lets you analyze a chosen period and shows graphs like post count and ER (engagement rate) by day, using public reactions/likes/comments; it also supports time-window analysis. citeturn3search1turn3search5  
- Fanpage Karma is built for competitor analysis and explicitly supports analyzing different timeframes (week/month/year) across profiles. citeturn3search6turn3search2  

What you’ll pull (last 18 months):
- Posts per month (cadence)
- Median likes/comments (and views where available) per post
- Top posts per month
- Format mix (reels vs images vs carousels, if the tool detects it)

**Important nuance:** for FB/IG, those are the *current totals* on older posts (public counts), not “as of that date.” Still extremely useful to understand what content worked in that period.

---

## Step 3 — Your “one sheet to rule them all” (monthly)
Make one Google Sheet with a row per **month** (18 rows). Columns:

**FB**
- Posts
- Median reactions
- Median comments
- Top post link + reactions

**IG**
- Posts
- Median likes
- Median comments
- Median views (reels, if available)
- Top post link + likes/views

**YT**
- Videos uploaded
- Views gained (month)
- Subs gained (month)
- Top video link + views

Then add two summary blocks:
- **Cadence vs performance** (months with more posting: did median engagement rise?)
- **“Era markers”** (campaigns, collaborations, giveaways, controversy spikes—write them down; they explain weird spikes better than any algorithm)

---

## Step 4 — If you *really* want “follower growth” for FB/IG over 18 months
Only if a third party has been tracking that profile already. Social Blade *sometimes* has IG/FB history coverage, but it’s not guaranteed. citeturn3search4turn3search12  
If it’s not tracked, you can’t magically recover it retroactively.

---

## Why the old “easy way” died
Meta’s old public-visibility tool CrowdTangle was shut down (Aug 14, 2024), which is why historical tracking of public FB/IG content is now more fragmented. citeturn3search3turn3news41turn3search15

---

If you paste the **final canonical Page URL** (not the share link) and also the IG + YT links, I’ll tell you the quickest exact path (which tool is most likely to work for *that* profile and what to export so you get an 18-month narrative in one clean table).

---

### 9. **Simos:**

Can I do this for free?

---

### 10. **ChatGPT:**

Yes — **mostly**. You can do a solid 18-month “how it’s been going” for **free**, but with two unavoidable limits:

1) **IG/FB “profile views / reach / impressions” are not publicly available**, so free vs paid doesn’t matter there.  
2) For **historical follower growth on IG/FB**, you only get it free if someone already tracked it (often they didn’t).

What you *can* do for free is still very useful: **cadence + public engagement + public video views** across all platforms, and **proper historical curves for YouTube**.

### Free setup that works (one profile)

**1) YouTube (free + good history)**
- Use **Social Blade (free tier)** to get subscriber + view history curves for many channels.
- Or go “pure free + nerdy”: use the **YouTube Data API** (free quota) to pull current stats, and then you start tracking from today forward.

**2) Instagram + Facebook (free but more manual)**
You have two free options:

**A. Manual monthly sampling (fast, low effort)**
- Go back month by month for 18 months.
- For each month, record:
  - number of posts
  - top 3 posts (link)
  - likes/comments (and views if shown)
This takes ~30–60 minutes per platform if you’re disciplined.

**B. “Post list export” via browser + copy/paste (free, medium effort)**
- Open the profile’s post grid/timeline in a desktop browser.
- Scroll until you cover the date range.
- Copy links + visible metrics into a sheet.
No paid tool, just elbow grease.

### What you can NOT do for free (or paid, unless you have access)
- IG/FB **profile views**
- IG/FB **reach, impressions**
- IG/FB **story views**
- link clicks, saves breakdowns, audience demographics  
Those are owner-only.

### The best free “one-sheet” tracking template (monthly, 18 rows)
Columns per month:

- **FB:** posts | median reactions | median comments | top post link
- **IG:** posts | median likes | median comments | median reel views (if visible) | top post link
- **YT:** videos | subs gained | views gained | top video link

Use **median** (not average) so one viral post doesn’t hallucinate your conclusions.

### The “free but honest” verdict
- **YouTube:** free retrospective tracking is usually **excellent**.
- **Instagram/Facebook:** free retrospective is **good for content performance**, **not** for true growth/reach metrics.

If you paste the IG and YT links (or handles) along with the canonical FB page URL (not the share link), I can tell you which parts you can likely get retroactively for free for *that specific account*, and which parts you’ll need to track going forward.

---

### 11. **Simos:**

https://youtube.com/@metabolomicmedicine?si=ARR5INYrW0eiukIY

---

### 12. **Tool:**

Empty search results
No results were found for the provided queries

---

### 13. **Tool:**

Empty search results
No results were found for the provided queries

---

### 14. **ChatGPT:**

Yes — you can do a **pretty good 18-month “trajectory” for free**, but you need to accept what “free” can *actually* measure.

### First: what you can’t get (free or paid, unless you own the account)
For Facebook/Instagram competitors you **won’t** get historical **profile views / reach / impressions / story views**. Those are private Insights.

### What you *can* get for free (and it’s still very useful)
Across **FB + IG + YouTube**, you can reconstruct:

- **Cadence:** how often they posted each month (last 18 months)
- **Output mix:** long videos vs Shorts/Reels vs static posts
- **Public performance:** likes/comments and public views shown on each post/video
- **“Best of” per month:** top posts/videos by engagement

For your YouTube channel link (`@metabolomicmedicine`), the public channel page currently shows roughly **~70.8K subscribers** and **~481 videos** (these numbers fluctuate). citeturn0search1

---

## The free 18-month method that works (and doesn’t rely on lucky third-party history)

### 1) YouTube: build a monthly table from the videos list (free, reliable)
Go to the channel → **Videos** → sort by **Newest**. citeturn0search4  
Then for each month going back 18 months, record:

- **# videos uploaded**
- For each video uploaded that month: **current views**, **likes**, **comments**
- Compute per month: **median views**, **median likes**, **median comments**
- Keep **top 3 videos** (links)

This answers: *“Over the last 18 months, were they posting more/less, and did the content released in those months perform better/worse?”*

**Why median?** One viral episode doesn’t hypnotize your conclusions.

### 2) Instagram + Facebook: do the same “month buckets”
Same idea:
- count posts per month
- record reactions/likes + comments + visible views
- save top posts per month

You’ll end up with a clean “content performance timeline” even without private metrics.

---

## “But I want growth over time” (subs/followers curve)
- **YouTube:** sometimes free sites (Social Blade etc.) have historical daily/weekly curves *if they already tracked the channel*. If the channel isn’t indexed there, you can’t magically recover the curve retroactively — you can only start tracking **from today forward**. (Social Blade itself explains it uses public API data and may not have every channel tracked.) citeturn7search8turn0search3  
- **IG/FB:** follower history is usually *not* recoverable retroactively unless a third party already tracked it.

So the guaranteed-free retrospective is **performance-by-month of the content published**, not “exact follower growth curve.”

---

## The clean spreadsheet structure (18 rows, one per month)
Columns (YouTube):
- Month
- Uploads
- Median views (videos published that month)
- Median likes
- Median comments
- Top 3 video links

Do the same block for IG and FB.

---

## If you want, I can also make it “set-and-forget” (free going forward)
Once you have the FB + IG canonical links, you can track **weekly snapshots** (followers shown publicly + new posts + engagement). In 18 months, you’ll have the real growth curve you wish the internet gave you retroactively.

To proceed efficiently, paste:
1) the **Instagram profile link**, and  
2) the **real Facebook page link** (not the “share/…” URL — the final one after redirect).

---

### 15. **Simos:**

Can we craft a perfect prompt so your agentic mode does all this for me? Tracking Metabolomic medicine

---

### 16. **ChatGPT:**

Yep. Here’s a “paste-and-run” prompt for Agentic Mode that’s specific, measurable, and doesn’t pretend we can see Meta’s private Insights.

It’s built to produce an **18-month retrospective** for **Metabolomic Medicine** across **YouTube + Facebook + Instagram** using **free sources** (and to clearly label anything it can’t obtain).

`‌`‌`text
You are an OSINT-style social analytics agent. Your job is to reconstruct the last 18 months of public performance for the brand “Metabolomic Medicine” across YouTube, Facebook, and Instagram, and present the results as a clean monthly timeline + insights.

Hard constraints (must follow):
- Use ONLY public data and free sources/tools.
- Do NOT claim access to private metrics (profile views, reach, impressions, story views, link clicks, saves-by-source, audience demographics). If asked, explicitly state these are owner-only and not recoverable for competitors.
- Work within the last 18 full months ending today (use the user’s timezone: Europe/Athens).
- Every factual claim about counts/dates should be backed by citations/links to the exact public page where it appears.
- If any platform is inaccessible due to login/blocks, explain what failed and provide a manual fallback method.

Targets:
- YouTube channel: https://youtube.com/@metabolomicmedicine
- Facebook page: [PASTE CANONICAL FB PAGE URL HERE — NOT a share link]
- Instagram profile: [PASTE IG PROFILE URL HERE]

Primary outputs (deliver all):
1) Monthly timeline table (18 rows: Month 1 … Month 18) for each platform with:
   YouTube:
   - # videos published that month
   - median views of videos published that month (median, not mean)
   - median likes
   - median comments
   - top 3 videos (title + URL + views)
   Facebook:
   - # posts published that month
   - median reactions
   - median comments
   - median shares (if publicly visible; otherwise “Not public”)
   - top 3 posts (URL + reactions)
   Instagram:
   - # posts/reels published that month
   - median likes
   - median comments
   - median reel views (only if publicly visible)
   - top 3 posts/reels (URL + likes/views)

2) Cross-platform summary (bullet points, 10–20 lines):
- Posting cadence trends (increasing/decreasing, bursts, quiet months)
- Content formats that appear to perform best (Shorts vs longform; reels vs static)
- Best months and worst months (based on median performance + volume)
- Notable “spikes” and plausible public explanations (collabs, series launches, topical events) — label these as hypotheses unless proven.

3) “What you cannot know” section:
- Explicitly list which metrics are private on Meta and therefore unavailable.
- If follower/subscriber growth history cannot be retrieved retroactively, say so and propose a forward-tracking plan.

Method (do this step-by-step and show your work):
A) YouTube
- Use public channel pages and/or YouTube Data API documentation if needed to interpret fields, but only collect actual values from public pages.
- Build a list of all videos in the last 18 months (title, publish date, URL, views, likes, comments where visible).
- Bucket by month and compute medians + top 3.
B) Instagram & Facebook
- Collect posts in the last 18 months with URLs and visible engagement counts.
- Bucket by month and compute medians + top 3.
- If scraping is blocked, use a manual fallback: instruct how to export/capture the necessary list (scroll + copy links) and show a template.

4) Provide a Google Sheets-ready CSV schema:
- One “Master” table schema that can store all platforms with columns:
  platform, month, item_type, item_url, publish_date, views, likes/reactions, comments, shares, notes
- And a “Monthly Summary” schema:
  platform, month, items_published, median_views, median_likes/reactions, median_comments, median_shares, top_items_urls

Quality rules:
- Use medians to avoid viral outliers.
- Treat old post engagement as “current totals observed today,” not historical as-of totals; label this clearly.
- Keep it readable: tables + short narrative, no fluff.

End state:
Deliver the 3 platform monthly tables, the cross-platform insight summary, the limitations section, and the CSV schemas.
`‌`‌`

A couple tiny tweaks you can make depending on your goal:
- If you care about **strategy**, add: “Also categorize top items by topic (e.g., insulin resistance, vitamin D, metabolomics education, patient stories) and compute topic medians.”
- If you care about **operations**, add: “Recommend an optimal posting cadence + format mix based on the best-performing months.”

If you paste me the **canonical Facebook page URL** + **Instagram URL**, I can also tailor the prompt to the exact page structure (FB pages sometimes redirect into weird “profile.php?id=…” formats, and IG handles matter).

---

## Archive Metadata

- **Extraction date:** 2026-02-28 16:45
- **Original index:** 5
- **Total messages:** 16
- **Themes detected:** technology

---

*This conversation was automatically extracted from ChatGPT history.*
*See  for navigation.*
