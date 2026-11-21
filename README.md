# Archivi.ng for AI assistants

Search and read [Archivi.ng](https://archivi.ng)'s Nigerian and African newspapers and magazines from Claude Code or Codex. The plugin connects your assistant to the archive and adds four research methods, which appear as `archivi-ng:<skill>`:

| Skill                   | For                                                                     |
| ----------------------- | ----------------------------------------------------------------------- |
| `check-a-quote`         | Whether a quotation or claim was printed, and where                     |
| `first-mention`         | The earliest (or latest) mention of a person, brand, event or phrase    |
| `trend-over-time`       | How much a topic was in the papers each year, and what drove the peaks  |
| `person-in-the-archive` | A short, cited account of how the papers covered someone                |

You need an Archivi.ng membership. Every plan includes a daily allowance, free plan included. The first time your assistant uses the archive, your browser opens Archivi.ng: sign in and choose **Allow**.

## Claude Code

```bash
claude plugin marketplace add Vistanium/archivi-plugins
```

```bash
claude plugin install archivi-ng@archivi-ng
```

## Codex

```bash
codex plugin marketplace add Vistanium/archivi-plugins
```

```bash
codex plugin add archivi-ng@archivi-ng
```

Then sign in, and restart any open Codex sessions:

```bash
codex mcp login archivi
```

## Other assistants

In Claude on the web or desktop, or in ChatGPT, add `https://mcp.archivi.ng/mcp` as a custom connector. The skills in `plugins/archivi-ng/skills/` are plain `SKILL.md` files you can add to any assistant that supports skills.
