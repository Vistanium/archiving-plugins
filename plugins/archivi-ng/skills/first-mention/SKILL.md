---
name: first-mention
description: Find the earliest (or latest) mention of a person, brand, event, phrase or idea in the Archivi.ng archive of Nigerian and African newspapers and magazines. Use for "when did X first appear", "earliest reference to X", "when did papers stop mentioning X".
---

# Find a first (or last) mention

Uses the Archivi.ng tools (`archive_*`). Follow the server's own instructions for how search and sorting work; this is the order to use them in.

1. **Pin down the term.** For a person, organisation, place or event, call `archive_entity` first and note the `entity_id`; it catches the different forms a name is printed in. For a brand or phrase, list the spellings and forms it might take and search each one separately.
2. **Sort by date.** Search with `sort: oldest` (or `newest` for a last mention), quoting the phrase. Use `detail: brief` to scan more results cheaply. With an `entity_id`, search by it as well as by the printed name.
3. **Confirm the earliest hits on the page.** Prefer results whose `match_type` is `literal_ocr`. Call `archive_read_page` with the phrase on the earliest two or three and check the words are really there, and mean what you think. Move down the list until one holds up.
4. **Check what came before.** Call `archive_coverage` for the years just before your earliest confirmed hit. If the archive holds little or nothing then, say the first mention is the earliest *in the archive*, not necessarily the first in print.
5. **Report.** Give the date, publication, page citation, link and `view_url`, quote the passage, and say how you searched (which forms, entity or phrase) and how far back the holdings go.
