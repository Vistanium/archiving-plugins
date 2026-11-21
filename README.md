# Archivi.ng for AI assistants

Search and read [Archivi.ng](https://archivi.ng)'s Nigerian and African newspapers and magazines from Claude Code, Codex or Antigravity. The plugin connects your assistant to the archive and adds four research methods, which appear as `archivi-ng:<skill>`:

| Skill                   | For                                                                    |
| ----------------------- | ---------------------------------------------------------------------- |
| `check-a-quote`         | Whether a quotation or claim was printed, and where                    |
| `first-mention`         | The earliest (or latest) mention of a person, brand, event or phrase   |
| `trend-over-time`       | How much a topic was in the papers each year, and what drove the peaks |
| `person-in-the-archive` | A short, cited account of how the papers covered someone               |

You need an Archivi.ng membership. Every plan includes a daily allowance, free plan included. The first time your assistant uses the archive, your browser opens Archivi.ng: sign in and choose **Allow**.

## Claude Code

```bash
claude plugin marketplace add Vistanium/archiving-plugins
```

```bash
claude plugin install archivi-ng@vistanium
```

## Codex

```bash
codex plugin marketplace add Vistanium/archiving-plugins
```

```bash
codex plugin add archivi-ng@vistanium
```

Then sign in, and restart any open Codex sessions:

```bash
codex mcp login archivi
```

## Antigravity

Clone this repository, then install the plugin from its folder:

```bash
agy plugin install ./plugins/archivi-ng
```

## Other assistants

In Claude on the web or desktop, or in ChatGPT, add `https://mcp.archivi.ng/mcp` as a custom connector. The skills in `plugins/archivi-ng/skills/` are plain `SKILL.md` files you can add to any assistant that supports skills.

## What's in this repository

| Path                                                         | For                                                    |
| ------------------------------------------------------------ | ------------------------------------------------------ |
| `.claude-plugin/marketplace.json`                            | The Claude Code marketplace                            |
| `.agents/plugins/marketplace.json`                           | The Codex marketplace                                  |
| `plugins/archivi-ng/.claude-plugin/plugin.json`, `.mcp.json` | The plugin and its archive connection, for Claude Code |
| `plugins/archivi-ng/plugin.json`, `mcp.json`                 | The same for Codex                                     |
| `plugins/archivi-ng/mcp_config.json`                         | The archive connection for Antigravity                 |
| `plugins/archivi-ng/skills/`                                 | The four research skills, shared by every assistant    |
| `plugins/archivi-ng/evals/`                                  | Test cases for the skills                              |

## Checking the skills

`plugins/archivi-ng/evals/` holds one case per skill, each a real question with a stand-in archive that answers from what the live archive returned. Graders check that the skill fired, that the key steps ran (an oldest-first search, a page read, a holdings check) and, with a model judge, that the answer is right. A run uses no archive allowance:

```bash
claude plugin eval plugins/archivi-ng --ablation none --runs 3 -j 4
```

Every run is a Claude Code session on your own Claude sign-in, and the stand-in archive and the judge are Claude too, so a run counts against your Claude plan's usage, or bills your API key if Claude Code uses one. The report prices a full run at about $3.

## Privacy and terms

Using the archive through an assistant is covered by Archivi.ng's [terms of use](https://archivi.ng/terms-of-use) and [privacy policy](https://archivi.ng/privacy-policy). The plugin's own files are under the MIT licence.
