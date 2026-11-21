---
name: person-in-the-archive
description: Build a short profile of a person from how Nigerian and African newspapers and magazines covered them, using the Archivi.ng archive. Use for "what did the papers say about X", "X's career as reported at the time", or background on a public figure from the 1960s to the 2000s.
---

# Profile a person from the archive

Uses the Archivi.ng tools (`archive_*`). Follow the server's own instructions on entities and citations; this is the order to use them in. Plan on 12 to 15 archive calls; `archive_usage` shows what's left of the day's allowance.

1. **Find the right person.** Call `archive_entity` with the name and `type: person`. If several match, use the descriptions and page counts to pick one, and ask the reader when it's still unclear. Note the `entity_id` and its `pages`.
2. **See the shape of their coverage.** Call `archive_count` with the `entity_id` from their first public years to the latest the archive holds, including the years after their death: anniversaries, inquiries and obituaries can outnumber coverage in their lifetime. Each call covers at most 60 years. If `total_matches` is well below the entity's `pages`, some coverage falls outside the years you counted. Add `group_by: publication` to see which papers covered them most.
3. **Read the key moments.** For each peak, and for the earliest and latest years, call `archive_search` with the `entity_id`, a date range and the surname as `query`, so the pages that are about them rank first; with no query the results come back oldest first. Skip mastheads, contents pages, letters pages and adverts. Read the most relevant page or two with `archive_read_page`, using a distinctive phrase from the result's matching words rather than just the name.
4. **Check what's missing.** Call `archive_coverage` for the paper most associated with them (their own, or the one that covered them most) and note any gaps that fall on their key moments.
5. **Check the stories.** Search `archive_stories` for their full name. Use a story only if its title or summary names them; otherwise say the team hasn't written about them.
6. **Report.** Write a short dated account in the papers' own terms: what they were reported doing, when, and by which papers. Cite every claim with its page citation and link, mark anything that rests on a machine summary rather than a page you read, and name the gaps in the holdings that matter for this person.
