---
name: check-a-quote
description: Check whether a quotation, headline or claim was printed in a Nigerian or African newspaper or magazine, using the Archivi.ng archive. Use when someone asks "did X really say this", "where was this printed" or wants a source for a quote from the 1960s to the 2000s. Not for quotes from books, broadcasts or the web.
---

# Check a quote in the archive

Uses the Archivi.ng tools (`archive_*`). Follow the server's own instructions for how search works; this is the order to use them in.

1. **Search for the most distinctive words, quoted.** Pick four to eight words from the quote that are unlikely to be paraphrased, and search them as one quoted phrase with `archive_search`. If the whole quote is eight words or fewer, search all of it. Run it once with `sort: oldest` and `detail: brief` to find the earliest printing, since relevance order puts later tributes and reuses first. Add `from` and `to` if the person gives a date or decade, and `publication` if they name a paper.
2. **If nothing matches, loosen in steps.** Try a shorter quoted phrase, then two separate quoted phrases from different parts of the quote. Quotes are often reworded between papers, and OCR can break a phrase across a misread word.
3. **Read before you confirm.** For each likely page, call `archive_read_page` with the phrase. Compare the printed wording with the quote, word for word. A machine summary is never enough. If the passage doesn't say who is speaking, read the page with `scope: full` and find the paper's own attribution (a byline, "said", "extracts from the speech by"); a second phrase search often misses because the OCR wording differs.
4. **Check the holdings around the date.** Call `archive_coverage` with no publication to get the slugs and date ranges, then with `publication`, `from` and `to` for the titles and months in question. Do this when nothing was found, to tell "not held" from "not printed", and when the earliest hit comes well after the event, to say whether earlier issues are held. Never say "this was never printed" or call a hit "the first printing" without this check.
5. **Report.** Give the closest printed wording, how it differs from the quote, and each page's citation and link. Include the `view_url` so the reader can see the scan, since OCR can misread words. Say who the paper attributed the words to, and whether it was a direct quote or a report of what was said. If pages disagree about when or where the words were said, say so, and give more weight to the page printed closest to the event.
