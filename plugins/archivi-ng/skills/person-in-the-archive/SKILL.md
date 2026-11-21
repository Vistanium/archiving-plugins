---
name: person-in-the-archive
description: Build a short profile of a person from how Nigerian and African newspapers and magazines covered them, using the Archivi.ng archive. Use for "what did the papers say about X", "X's career as reported at the time", or background on a public figure from the 1960s to the 2000s.
---

# Profile a person from the archive

Uses the Archivi.ng tools (`archive_*`). Follow the server's own instructions on entities and citations; this is the order to use them in.

1. **Find the right person.** Call `archive_entity` with the name and `type: person`. If several match, use the descriptions and page counts to pick one, and ask the reader when it's still unclear. Note the `entity_id`.
2. **See the shape of their coverage.** Call `archive_count` with the `entity_id` over a span that covers their public life, to see when the papers wrote about them most.
3. **Read the key moments.** For each peak, and for the earliest and latest years, search with the `entity_id` and a date range, then read the most relevant page or two with `archive_read_page`. Prefer pages where they are the subject over passing mentions.
4. **Check the stories.** If `archive_stories` is available, search it for the person: the team's own write-ups can point to pages worth reading.
5. **Report.** Write a short dated account in the papers' own terms: what they were reported doing, when, and by which papers. Cite every claim with its page citation and link, mark anything that rests on a machine summary rather than a page you read, and say which years the archive holds little of.
