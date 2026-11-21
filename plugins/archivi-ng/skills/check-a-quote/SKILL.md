---
name: check-a-quote
description: Check whether a quotation, headline or claim was printed in a Nigerian or African newspaper or magazine, using the Archivi.ng archive. Use when someone asks "did X really say this", "where was this printed" or wants a source for a quote from the 1960s to the 2000s. Not for quotes from books, broadcasts or the web.
---

# Check a quote in the archive

Uses the Archivi.ng tools (`archive_*`). Follow the server's own instructions for how search works; this is the order to use them in.

1. **Search for the most distinctive words, quoted.** Pick four to eight words from the quote that are unlikely to be paraphrased, and search them as one quoted phrase with `archive_search`. Add `from` and `to` if the person gives a date or decade, and `publication` if they name a paper.
2. **If nothing matches, loosen in steps.** Try a shorter quoted phrase, then two separate quoted phrases from different parts of the quote. Quotes are often reworded between papers, and OCR can break a phrase across a misread word.
3. **Read before you confirm.** For each likely page, call `archive_read_page` with the phrase. Compare the printed wording with the quote, word for word. A machine summary is never enough.
4. **Check the holdings before saying it wasn't printed.** If you found nothing, call `archive_coverage` for the papers and years in question. Say what the archive holds and what it doesn't, rather than "this was never printed".
5. **Report.** Give the closest printed wording, how it differs from the quote, and each page's citation and link. Include the `view_url` so the reader can see the scan, since OCR can misread words. Say who the paper attributed the words to, and whether it was a direct quote or a report of what was said.
