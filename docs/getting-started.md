# Quick start

Use Node.js 22 or later and your chosen agent tool. These commands target the published candidate package; before publication, use the local candidate archive route below.

## 1. Install the methods

```sh
npx --yes @shendeguize/agent-organon@1.0.0-rc.1 install --product core --agent codex --scope project --project /path/to/workspace --version 1.0.0-rc.1
```

Replace `/path/to/workspace` with your project path. Choose `codex`, `claude`, `cursor`, `copilot`, `gemini` or `opencode` for `--agent`. Start with project installation; use `--scope global` for global installation. Installing methods does not adopt a philosophy.

## 2. Check installation and discovery

```sh
npx --yes @shendeguize/agent-organon@1.0.0-rc.1 check --product core --agent codex --scope project --project /path/to/workspace
```

Open the agent in that project and confirm the method appears in its skill list or can be loaded explicitly. File checks establish installation integrity; actual tool support is recorded in the candidate’s validation matrix. Resolve reported project/global naming conflicts before continuing.

## 3. Select a philosophy explicitly

```sh
npx --yes @shendeguize/agent-organon@1.0.0-rc.1 init --product core --agent codex --scope project --project /path/to/workspace --philosophy core
```

Read the preview, confirm the destination and philosophical text, then repeat the command with `--apply --plan-sha256 <preview-plan-hash>` using the exact `planSha256` value in that preview. A changed philosophy or instruction file requires a new preview and decision. An existing philosophy must not be silently replaced; the collection root does not select a domain. Method installation and project adoption are managed separately.

## 4. Complete a read-only assessment

Give the agent the actual material you want assessed and ask:

> Use `organon-core-assess` with this project’s explicitly selected `PHILOSOPHY.md` as the adopted baseline. Assess the material’s grounds, applicability and possible conflicts. Return a read-only report; do not edit files or adopt a proposal.

Check that the report identifies its baseline, reasons and limits. An assessment does not authorize philosophical revision; missing independent review must remain explicitly incomplete.

## Offline archives and lifecycle commands

Download and extract the archive from the corresponding GitHub Release. Every product includes `installer/organon.mjs`, which Node can run directly; only the AgentOrganon npm package registers the `organon` command.

```sh
node /path/to/extracted/package/installer/organon.mjs install --product core --agent codex --scope project --project /path/to/workspace --from /path/to/shendeguize-organon-core-1.0.0-rc.1.tgz
```

The same entrypoint provides `update`, `rollback` and `uninstall`. Check integrity before updating; user modifications or existing-file conflicts stop an update. Uninstall retains user modifications and the adopted project philosophy.

[Understand the concepts and boundaries](https://shendeguize.github.io/OrganonCore/understand) · [GitHub Releases](https://github.com/shendeguize/OrganonCore/releases)
