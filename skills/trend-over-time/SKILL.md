---
name: trend-over-time
description: Show how often a topic, name or phrase appears in Nigerian and African newspapers and magazines over the years, using Archivi.ng's counts. Use for "how much was X in the news", "when did X peak", "compare X and Y over time", or a timeline of coverage.
---

# Trace a topic over time

Uses the Archivi.ng tools (`archive_*`). Follow the server's own instructions on counts and `per_1000`; this is the order to use them in.

1. **Choose what to count.** Use an `entity_id` from `archive_entity` for a person, place, event or organisation, or a quoted phrase for anything else. If `archive_entity` finds no match, use the quoted phrase. Count the full phrase rather than an abbreviation such as "SAP", which matches unrelated pages, and tell the reader which form you counted. For two different terms, count each separately over the same years.
2. **Count by year, then by publication.** Call `archive_count` with `from_year` and `to_year` (at most 60 years apart). Then call it again with `group_by: publication` over the same years, to see which titles carry the coverage. Counts are pages, so an advert repeated across issues counts each time.
3. **Read the share, not the total.** Compare `per_1000` between years. Don't name a year as a peak or low if it is marked `small_base` or has very few `pages_held`. A null `per_1000` means no pages are held that year: a gap in the holdings, not a year of silence. Before naming a peak, check whether one publication with a high rate makes up a large share of that year's pages held. If it does, count that title on its own with `publication` and say whether the peak holds without it.
4. **Explain the peaks.** For the two or three highest years, call `archive_search` with the quoted phrase (or `entity_id`), `from` and `to` set to that year, and `limit: 5`. Prefer results with `match_type: literal_ocr`. Read one or two with `archive_read_page`, passing the phrase, so you get the passage and a `view_url`.
5. **Report.** Show the counts as a short table or chart with matches, pages held and `per_1000` per year. Name the peaks with the pages that explain them, cite each page with its link, and say which years rest on few pages. Mark any page you cite only from its machine summary as not read.
