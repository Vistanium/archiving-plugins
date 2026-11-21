#!/usr/bin/env bash
# Fast checks run before each commit by lefthook; the evals are run by hand (see README).
set -uo pipefail
cd "$(git rev-parse --show-toplevel)"
fail=0

for f in $(git ls-files '*.json') gemini-extension.json; do
  [ -f "$f" ] || continue
  python3 -m json.tool "$f" >/dev/null 2>&1 || { echo "pre-commit: $f is not valid JSON"; fail=1; }
done

python3 - <<'PY' || fail=1
import json, sys
load = lambda p: json.load(open(p))
names = {
    ".claude-plugin/plugin.json": load(".claude-plugin/plugin.json")["name"],
    "plugin.json": load("plugin.json")["name"],
    "gemini-extension.json": load("gemini-extension.json")["name"],
    ".claude-plugin/marketplace.json": load(".claude-plugin/marketplace.json")["plugins"][0]["name"],
    ".agents/plugins/marketplace.json": load(".agents/plugins/marketplace.json")["plugins"][0]["name"],
}
servers = {p: sorted(load(p)["mcpServers"]) for p in (".mcp.json", "mcp.json", "mcp_config.json", "gemini-extension.json")}
ok = True
if len(set(names.values())) > 1:
    print("pre-commit: the plugin name differs between files:", names); ok = False
if len({tuple(v) for v in servers.values()}) > 1:
    print("pre-commit: the MCP server name differs between files:", servers); ok = False
sys.exit(0 if ok else 1)
PY

run() {
  local tool=$1; shift
  if command -v "$tool" >/dev/null 2>&1; then
    out=$("$@" 2>&1) || { echo "pre-commit: $* failed"; echo "$out"; fail=1; }
  else
    echo "pre-commit: $tool not installed, skipping its check"
  fi
}
run claude claude plugin validate .
run agy agy plugin validate . --strict
run gemini gemini extensions validate .

exit $fail
