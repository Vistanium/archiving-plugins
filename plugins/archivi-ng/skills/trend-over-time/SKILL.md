---
name: trend-over-time
description: Show how often a topic, name or phrase appears in Nigerian and African newspapers and magazines over the years, using Archivi.ng's counts. Use for "how much was X in the news", "when did X peak", "compare X and Y over time", or a timeline of coverage.
---

# Trace a topic over time

Uses the Archivi.ng tools (`archive_*`). Follow the server's own instructions on counts and `per_1000`; this is the order to use them in.

1. **Choose what to count.** Use an `entity_id` from `archive_entity` for a person, place, event or organisation, or a quoted phrase for anything else. For two terms, count each separately over the same years.
2. **Count by year.** Call `archive_count` with `from_year` and `to_year` (at most 60 years apart). Add `publication` to look at one title, or `group_by: publication` to see which papers covered it most.
3. **Read the share, not the total.** Compare `per_1000` between years. Leave out years marked `small_base` when naming peaks and lows, and treat a null `per_1000` as a gap in the holdings, not a year of silence.
4. **Explain the peaks.** For the two or three highest years, search that year with `archive_search` and read a page or two with `archive_read_page` to say what drove the coverage.
5. **Report.** Show the counts as a short table or chart with matches, pages held and `per_1000` per year. Name the peaks with the pages that explain them, cite each page with its link, and say which years rest on few pages.
