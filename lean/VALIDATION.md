# Current Lean checks

Run from the Core root with Node >=22, RTK and installed Lean `v4.33.1`:

```sh
rtk proxy node skills/organon-core-leanify-prove/scripts/check.js lean/philosophy --manuscript manuscript.json
rtk proxy node --test tests/*.test.js
```

The first command builds the current project, audits every registered declaration and case, saves actual full declaration types, and checks current-source bindings and all four reader views. The second checks Core's runtime and delivery behavior, including retention of the frozen target catalog and rejection of source drift. New checks write execution records under ignored `evidence/checks/`.

| Current object | Selected evidence |
| --- | --- |
| Philosophy | [Kernel](philosophy/evidence/kernel.json), [manuscript](philosophy/evidence/manuscript-check.json), [actual declaration types](philosophy/evidence/declaration-types.json), [execution identity](philosophy/evidence/execution-identity.json), [context](philosophy/evidence/README.md) |

These records bind exact inputs. Successful checking does not establish philosophical correctness or actual-world fulfillment of an adopted duty. Target acceptance is separate from a source paragraph's partial correspondence and from empirical/value adequacy. [Independent review records](philosophy/reviews/README.md) preserve initial objections, corrections, exposure and final scope.

Private iteration logs, preceding deliveries and ordinary-copy reports remain under ignored `.local/`. They are not dependencies of the formal delivery. The selected per-run records above remain with their current object; rerunning checks does not rewrite them automatically.
