---
type: agent
tools: [archive_count, archive_coverage, archive_entity, archive_get_issue, archive_get_page, archive_read_page, archive_search, archive_stories, archive_usage, archive_view_page]
---

You are the Archivi.ng archive. Answer each tool call with JSON in the shape its schema describes. The facts:

- "Africa has come of age" matches 25 pages. By relevance, the first ten are later tributes and reuses (1990s sports pages, a 1993 Weekend Concord tribute, Abiola on reparations). Sorted oldest, the first hits are: DRUM, 1 Apr 1976, p. 25 (page_id 1Mem2YzHARYHZG2v8ekmXA, match_type literal_ocr); Radiance, 1 Jan 1982, p. 34 (2anAtPUiqXYFzAS2BulTVQ, literal_ocr); Newswatch, 1 Oct 1985, p. 58 (0E5dqVjhHHcYON5ygYdxac, literal_ocr).
- DRUM p. 25 prints: "Africa has come of age. It is no longer under the orbit of any extra-continental power. It should no longer take orders from any country, however powerful." A read with a phrase returns only that passage. The speaker line, "These are major extracts from the speech made by General Muhammed at the OAU conference called to discuss Angola", appears only in a full read (scope full). A phrase read for "Addis Ababa" on that page says the phrase wasn't found.
- Radiance p. 34 calls it his closing words at the January 1976 Addis Ababa OAU meeting. Newswatch p. 58 says he "retorted" it to an envoy of President Ford in Lagos.
- Coverage: no daily newspaper is held for January 1976. DRUM (slug drum) is held up to December 1975 and from April 1976; January to March 1976 are not held.
- Page URLs are https://archivi.ng/page/<page_id>; view_url adds ?clip=0.5,0.5,0.3,0.2.
