# Archivi.ng for AI assistants

Search and read [Archivi.ng](https://archivi.ng)'s Nigerian and African newspapers and magazines from Claude Code, Codex, Antigravity or Gemini CLI. The plugin connects your assistant to the archive and adds four research methods, which appear as `archivi-ng:<skill>`:

| Skill                   | For                                                                    |
| ----------------------- | ---------------------------------------------------------------------- |
| `check-a-quote`         | Whether a quotation or claim was printed, and where                    |
| `first-mention`         | The earliest (or latest) mention of a person, brand, event or phrase   |
| `trend-over-time`       | How much a topic was in the papers each year, and what drove the peaks |
| `person-in-the-archive` | A short, cited account of how the papers covered someone               |

You need an Archivi.ng membership. Every plan includes a daily allowance, free plan included. The first time your assistant uses the archive, your browser opens Archivi.ng: sign in and choose **Allow**.

You can also [connect without a plugin](#connect-without-a-plugin).

## Claude Code

```bash
claude plugin marketplace add Vistanium/archiving-plugins
```

```bash
claude plugin install archivi-ng@vistanium
```

Open Claude Code and run `/mcp`. Select the Archivi.ng plugin’s connection and choose **Authenticate**. In your browser, sign in to Archivi.ng and choose **Allow**.

## Codex

```bash
codex plugin marketplace add Vistanium/archiving-plugins
```

```bash
codex plugin add archivi-ng@vistanium
```

Then sign in, and restart any open Codex sessions:

```bash
codex mcp login archive
```

## Antigravity

```bash
agy plugin install https://github.com/Vistanium/archiving-plugins
```

Reinstall with the same command to update.

## Gemini CLI

```bash
gemini extensions install https://github.com/Vistanium/archiving-plugins
```

To update later:

```bash
gemini extensions update archivi-ng
```

## Connect without a plugin

Connect directly to search and read the archive. The four research skills are available separately in [`skills/`](skills/) for assistants that support `SKILL.md` files.

When prompted, sign in to Archivi.ng in your browser and choose **Allow**.

### Claude Code

```bash
claude mcp add --scope user --transport http archivi-ng https://mcp.archivi.ng/mcp
```

In Claude Code, run `/mcp`, select `archivi-ng`, and choose **Authenticate**.

### Codex

```bash
codex mcp add archivi-ng --url https://mcp.archivi.ng/mcp
```

If you still need to sign in, run `codex mcp login archivi-ng`. Start a fresh Codex session after signing in.

### Antigravity CLI

```bash
agy mcp add --type http archivi-ng https://mcp.archivi.ng/mcp
```

In Antigravity CLI, run `/mcp` and follow the sign-in prompt for `archivi-ng`.

### Gemini CLI

```bash
gemini mcp add --scope user --transport http archivi-ng https://mcp.archivi.ng/mcp
```

In Gemini CLI, run `/mcp auth archivi-ng`.

### ChatGPT, Claude, and other assistants

Name the connection **Archivi.ng** and enter `https://mcp.archivi.ng/mcp` as the server URL. If your assistant asks for a transport or authentication method, choose **Streamable HTTP** and **OAuth**.

- **ChatGPT on the web**. Create a custom MCP app if your workspace supports it. [ChatGPT setup guide](https://help.openai.com/en/articles/12584461-developer-mode-and-full-mcp-apps-in-chatgpt-beta)
- **Claude on the web or desktop**. Add a custom connector under **Customize → Connectors**. [Claude setup guide](https://support.claude.com/en/articles/11175166-get-started-with-custom-connectors-using-remote-mcp)

## What's in this repository

| Path                                      | For                                                      |
| ----------------------------------------- | -------------------------------------------------------- |
| `skills/`                                 | The four research skills, shared by every assistant      |
| `.claude-plugin/plugin.json`, `.mcp.json` | The plugin and its archive connection, for Claude Code   |
| `.claude-plugin/marketplace.json`         | The Claude Code marketplace                              |
| `plugin.json`, `mcp.json`                 | The same for Codex                                       |
| `.agents/plugins/marketplace.json`        | The Codex marketplace                                    |
| `mcp_config.json`                         | The archive connection for Antigravity                   |
| `gemini-extension.json`                   | The extension and its archive connection, for Gemini CLI |
| `evals/`                                  | Test cases for the skills                                |
| `lefthook.yml`, `scripts/check-plugin.sh` | Checks run before each commit                            |

## Making changes

Install [Lefthook](https://lefthook.dev) and turn on the pre-commit check once per clone:

```bash
lefthook install
```

Before each commit, `scripts/check-plugin.sh` checks that every JSON file parses and that the plugin and server names match across the files for each assistant. It also runs the Claude Code, Antigravity and Gemini CLI validators when they're installed.

## Checking the skills

`evals/` holds one case per skill, each a real question with a stand-in archive that answers from what the live archive returned. Graders check that the skill fired, that the key steps ran (an oldest-first search, a page read, a holdings check) and, with a model judge, that the answer is right. A run uses no archive allowance:

```bash
claude plugin eval . --ablation none --runs 3 -j 4
```

Every run is a Claude Code session on your own Claude sign-in, and the stand-in archive and the judge are Claude too, so a run counts against your Claude plan's usage, or bills your API key if Claude Code uses one. The report prices a full run at about $3.

## Privacy and terms

Using the archive through an assistant is covered by Archivi.ng's [terms of use](https://archivi.ng/terms-of-use) and [privacy policy](https://archivi.ng/privacy-policy). The plugin's own files are under the MIT licence.
