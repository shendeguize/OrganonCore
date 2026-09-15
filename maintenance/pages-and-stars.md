# Pages and observed GitHub stars

Verified releases use the independent `site-data` branch. `main` CI produces development artifacts. **Preview Pages** (`preview-pages.yml`) may be dispatched manually from `main` to build, check and deploy the current source without a release receipt. A preview is not a verified release, does not update `site-data` or star history, and may be replaced by a later preview or verified release. Deploying it replaces the site currently served at the public Pages URL until another deployment succeeds.

## Publish a released site

After all three products have passed the complete release gates and are publicly available on npm and GitHub, dispatch **Verified release Pages** (`pages.yml`) from reviewed `main` or `release/1.0.0`. Supply the exact product version and canonical SHA-256 digest of the published `release-manifest.json`.

The workflow downloads the coordinator's public bundle, checks its complete evidence closure, and verifies all three npm and GitHub distributions against the manifest. It checks out the site's exact source commit and the manifest's Core theme commit, installs locked site-build dependencies in a temporary runner directory, and builds and checks the bilingual site. The workspace gitlinks and the domain's Core tooling pin must agree with the release manifest.

Only after those checks does it replace `site-data/public/`, preserving observed star history. `recommended-release.json` binds the release manifest, source and Core commits, verification time, and every immutable published file hash. Older versions and different content with the same version cannot replace the recommendation. The workflow uploads that directory and deploys it through the `github-pages` environment.

Core and AdvisedOrganons load the operational workspace tools from the exact commit in `release/tooling.json` (`workspace.repository` and `workspace.commit`). AdvisedOrganons also records `core`. These are reviewed full commit pins. The actual website theme always comes from the release manifest's Core source.

## Daily observation

**Observed stars** (`stars.yml`) runs daily at 02:17 UTC and can also be dispatched manually. It reads the real GitHub total and appends at most one observation per UTC date to `site-data/stars.json`. Zero, decreases, observation timestamps, and missing dates are retained. A failed API response or invalid count changes no published state.

Before any release, sampling stores `stars.json` and `stars.svg` but does not create or deploy a website. After a release, it verifies the saved manifest, recommendation and HTML hashes, updates only `public/assets/stars.json` and `public/assets/stars.svg`, and redeploys the existing released HTML. It does not rebuild from `main` or claim a new all-channel check. README's stable chart address is `https://shendeguize.github.io/OrganonCore/assets/stars.svg`; it becomes available after the first site release.

Both workflows share one concurrency group. They push only `refs/heads/site-data`, without force; a competing remote update causes failure. They need Actions enabled, a Pages site configured to use GitHub Actions, and the repository token's scoped `contents: write` permission for the data branch. Only the deployment job receives `pages: write` and `id-token: write`. Protected integration and release branches are not data storage.

## Verify and recover

Rerun `node --test tests/release-site-data.test.mjs tests/release.test.mjs` in the pinned AgentOrganon tooling checkout. These are local fixture tests; a passing result does not claim a remote deployment occurred.

If sampling fails, inspect the run and retry after resolving the API or stored-state issue. History is not synthesized. If deployment fails after a successful branch update, rerun the workflow: the saved release identity remains available. A failed publication gate must be resolved in the release process before retrying Pages. Review any unexpected stored-file or checksum change rather than replacing its hash to silence the check.
