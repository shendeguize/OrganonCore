# Philosophy document format

This is a revisable document interface for tools and callers. It adds no philosophical commitments and does not make a format check an assessment of meaning, support, or adoption. Core remains text-only; external tools may implement these conventions.

## Version header

A managed philosophy starts with this frontmatter, followed by the original Markdown text:

```yaml
---
format_version: 0.1.0
philosophy_version: 0.1.0
core_version: 0.1.0
derived_from: null
---
```

The supported header is a deliberately limited scalar format, not general YAML. Its only top-level fields are the four shown above, each appearing exactly once. Version values are unquoted `X.Y.Z` decimal triples, without leading zeroes except for zero itself, prerelease labels, or build metadata. `derived_from` is either literal `null` or an object with exactly these three fields, indented by two spaces, whose values are JSON double-quoted string scalars:

```yaml
derived_from:
  source_id: "example-source"
  philosophy_version: "0.1.0"
  content_hash: "0000000000000000000000000000000000000000000000000000000000000000"
```

The hash shown is a placeholder; an export records the actual source document's SHA-256 digest as 64 lowercase hexadecimal characters. The source identity and version identify the text from which the export was derived. This metadata is provenance, not proof of a shared merge ancestor, official Core content, or full adoption. Other YAML features, unknown or duplicate fields, and other scalar forms are outside this format.

`format_version` identifies this mechanical interface. `philosophy_version` identifies the adopted philosophical text. `core_version` identifies the Core version last fully considered by the adopter; it does not assert that every provision or update was accepted. Foreign imports do not advance that Core checkpoint merely by being imported. A revision to an existing commitment's meaning, force, or applicability warrants a major-version proposal; an addition that leaves existing commitments unchanged warrants a minor-version proposal; wording or structural changes without semantic change warrant a patch-version proposal. The agent explains the proposed classification and the user decides it; scripts do not infer philosophical meaning.

## Text units and stable IDs

Managed headings use the unindented ATX form `# Title` through `###### Title`, outside fenced code. Other ATX spellings and Setext headings are unsupported. Each managed heading has one ID comment on the immediately following line:

```markdown
### A section
<!-- organon:id example.section -->

Its direct body.
```

The document begins with one H1 heading whose ID is `organon.preamble`; its body contains the introductory text. Every heading, including headings with children or an empty direct body, has an ID. A unit contains its heading, ID line, and direct body up to the next ATX heading of any level or the end of the document. No authoritative text is left outside the units. Setext headings are outside the managed heading format.

IDs are unique within a document and match `[a-z][a-z0-9-]*(\.[a-z][a-z0-9-]*)+`. The single ID `extensions` is the only exception. Core's initial units use the `organon.*` namespace; adopters preserve an existing ID when editing, renaming, or moving that unit and use their own namespace for new units. An ID records identity, not philosophical priority or an immutable commitment. English and Chinese Core mirrors have the same IDs in the same order.

For a body hash, exclude the heading and ID line, convert CRLF and CR line endings to LF, and hash the complete direct body, including trailing blank lines. Do not trim or collapse whitespace. Compare heading text, level, parent ID, and order separately as structure; a move alone is not a body conflict. Change classification records text relationships, not philosophical compatibility. Review the proposed whole because independently classified units may constrain one another.

## Template and extensions

The current Core text provides three starting chapters: Charter, Grounds, and Relationships and Necessary Terms. They are a template, not an undeletable skeleton. Adopters may regroup the text and explicitly revise or withdraw commitments through their adoption process; a format checker must not reject a document solely because a template chapter was moved, renamed, or removed.

An external initializer may add an empty `## 4. Extensions` heading with ID `extensions`. Core does not add that empty chapter to its own philosophy. The marked heading and all of its descendants form the extension subtree, irrespective of its displayed title or position. An export that excludes extensions removes that marked subtree. If the marker is absent, ask the user to identify the intended boundary before such an export; do not guess from chapter numbers or wording. The remaining text is still the adopter's text, which may differ from official Core.

A source checkpoint or lock is separate from this document format. A derived workspace may keep one for change classification; the Core text and a read-only mirror can be format-valid without one. A local body differing from its recorded source hash is an ordinary customization, not by itself a format error. Hashes cannot recover unavailable prior text or establish a common ancestor; report those limits when comparing changes.
