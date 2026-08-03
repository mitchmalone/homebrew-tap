# CLAUDE.md — homebrew-tap

Homebrew tap for beeptui (`brew install mitchmalone/tap/beeptui`).

**`Formula/beeptui.rb` is generated — never edit it by hand.** The release workflow in the
`mitchmalone/beeptui` repo (local folder `../beeptui-temp/`) regenerates and pushes it on every
`v*` tag. A hand edit is silently overwritten by the next release.

- Formula wrong or broken? Fix the release workflow in the `beeptui` repo, then cut a release (or
  re-run the workflow) so the fix arrives through the generator. Only patch the formula directly
  for an emergency hotfix Mitch explicitly asks for — and mirror the fix into the generator in the
  same session.
- The only routinely hand-edited file here is `README.md`.
- Don't add other formulae, tooling, or CI to this repo without being asked.
