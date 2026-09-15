# Shared site build

This private, build-only package owns the common VitePress theme and public-reader projection for all three repositories. Its dependencies are excluded from product installation packages. VitePress is fixed at 1.6.4; the lock includes a tested Vite 6.4.3 override that removes known development-server vulnerabilities in the older transitive dependency. Preview generated static files, not a development server.

From an OrganonCore checkout:

```sh
npm ci --prefix tools/site
node tools/site/build.mjs --repo .
node tools/site/check.mjs --repo . --built
npm test --prefix tools/site
node tools/site/visual.mjs --repo .
```

The visual check uses Playwright Chromium in an isolated temporary browser context. Install the matching test browser in a sandboxed cache first, or select an existing browser executable with `--browser PATH`. It serves only `dist/site` on loopback, checks both desktop and mobile layouts, keyboard switching, saved language preference, target and line anchors, and writes screenshots plus a report to `dist/site-visual`. `--output PATH` selects another artifact directory. It does not reuse the user's browser profile.

For another repository, run the same entrypoints from the explicitly selected Core checkout with `--repo /path/to/AgentOrganon` or `--repo /path/to/AdvisedOrganons`. Independent CI must obtain the exact Core commit from its reviewed release manifest and pass that location through `ORGANON_CORE_ROOT` to the repository wrapper. `site/site.json` also requires the exact shared theme version; version matching alone is not a code-identity check.

## Sources and outputs

- `site/index.md` and `site/zh/index.md` own the landing pages. AgentOrganon owns explicit source-directory pages for philosophy and Lean.
- `docs/getting-started.md`, `docs/understanding.md` and their Chinese counterparts are the single sources for user guides.
- Core and the selected domain provide the philosophy, rationale, target catalog, manuscript, actual Lean files, overview and per-line explanations. The builder never generates new philosophical interpretations.
- Code hashes must match the manuscript. Missing or duplicate line explanations stop generation. The reader retains all nonblank lines, frozen targets, source states, tracing entries and supplementary declarations.
- Source links use the edition's version tag. Relative page routes are rewritten under each repository's Pages base. Philosophy unit IDs and Lean target/line anchors are stable across languages.
- `site/public/assets/stars.json` and `stars.svg` come from the independent star-observation workflow. The builder only copies them. It never invents a history.
- `dist/site-source` is generated input; `dist/site` is the portable static output. `dist/site-inputs.json` and `dist/site-check.json` record coverage and link checks. No `.local` source is used.

`check.mjs` builds unless `--built` is explicit, then checks local files, anchors, translation pairs, edition markers and declared reader coverage. Mechanical checks and screenshots do not replace independent source-fidelity or unfamiliar-reader assessment.
