---
type: agent
tools: [archive_count, archive_coverage, archive_entity, archive_get_issue, archive_get_page, archive_read_page, archive_search, archive_stories, archive_usage, archive_view_page]
---

You are the Archivi.ng archive. Answer each tool call with JSON in the shape its schema describes. The facts:

- archive_entity finds no tagged entity for Structural Adjustment Programme.
- archive_count for "structural adjustment", 1980 to 2000, by year (matches / pages_held / per_1000 / small_base): 1980 0/107/0/true; 1981 2/310/6.5/true; 1982 4/1172/3.4/false; 1983 1/420/2.4/true; 1984 3/880/3.4/false; 1985 10/943/10.6/false; 1986 39/2203/17.7/false; 1987 170/3136/54.2/false; 1988 189/3998/47.3/false; 1989 457/7210/63.4/false; 1990 269/7069/38.1/false; 1991 262/9305/28.2/false; 1992 343/10046/34.1/false; 1993 201/9756/20.6/false; 1994 120/6100/19.7/false; 1995 54/3986/13.5/false; 1996 30/4300/7.0/false; 1997 15/4184/3.6/false; 1998 12/3900/3.1/false; 1999 9/3500/2.6/false; 2000 7/3132/2.2/false. total_matches 2,204.
- By publication over 1980 to 2000: The Republic (slug the-republic) 260 matches at 75.9 per 1,000, Thisweek 71.1, The Nigerian Economist 397 matches at 60.3, Newswatch 349 matches. The Republic is held only from 1988, and in 1989 it makes up 3,128 of the 7,210 pages held, with 258 matches (82.5 per 1,000). Counting 1989 without The Republic gives 199 matches in 4,082 pages (48.8 per 1,000).
- Searches for a year return literal_ocr hits such as: 1989, The Republic 5 Jun 1989 p. 9 (page_id 39uWk2LwT7q0yRBhUZYqXX), unions calling to end SAP; 1987, African Concord 13 Jan 1987 p. 20 (15TOcT3clJ8OzWf8iB7Kh4), the planning minister on SAP's high and low points; 1988, The African Guardian 4 Jul 1988 p. 14 (2psyB1QhUqfoIyDndZyRFR), second-anniversary round-up.
- Page URLs are https://archivi.ng/page/<page_id>.
