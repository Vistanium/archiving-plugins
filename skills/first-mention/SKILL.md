---
name: first-mention
description: Find the earliest (or latest) mention of a person, brand, event, phrase or idea in the Archivi.ng archive of Nigerian and African newspapers and magazines. Use for "when did X first appear", "earliest reference to X", "when did papers stop mentioning X".
---

# Find a first (or last) mention

Uses the Archivi.ng tools (`archive_*`). Follow the server's own instructions for how search and sorting work; this is the order to use them in.

1. **Pin down the term.** For a person, organisation, place or event, call `archive_entity` first and note the `entity_id`; it catches the different forms a name is printed in. For a coined word, brand or idea (such as Nollywood), treat it as a quoted phrase. Plurals and possessives already match; search spaced or hyphenated forms ("Nolly wood") separately.
2. **Sort by date and page past the summary matches.** Search with `sort: oldest` (or `newest` for a last mention), quoting the phrase, with `detail: brief` and `limit: 100`. Machine summaries often use a term before it was in print, so the oldest results can all be `summary_match`. Keep paging with `next_cursor` until you reach the first `literal_ocr` hit. With an `entity_id`, search by it as well as by the printed name.
3. **Confirm the earliest hits on the page.** Call `archive_read_page` with the phrase on the earliest `literal_ocr` hits and check the words are really there, and mean what you think. Also check the last `summary_match` before it: "phrase wasn't found" there shows the earlier hits come only from summaries. OCR passages can be garbled, so if `archive_view_page` is available, look at the scan before quoting it.
4. **Check what came before.** Call `archive_coverage` with the earliest hit's publication slug to see how many of its issues are held in the years before, then with no publication to see which other titles the archive holds for those years. If the holdings are thin, say the first mention is the earliest *in the archive*, not necessarily the first in print.
5. **Report.** Give the date, publication, page citation, link and `view_url`, and quote the passage. Say which forms you searched, how many summary-only results came before the first confirmed one, and how far back the holdings go.
