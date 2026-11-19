# Turtle Homebrew tap

Homebrew tap for [Turtle](https://github.com/newssourcecrawler/nsc_turtle), a local, append-only custody ledger and bounded workflow runner.

## Install

```sh
brew install newssourcecrawler/turtle/nsc-turtle
```

This installs two commands: `turtle` and `brownout`. It builds from source using Homebrew's Rust toolchain and the upstream `Cargo.lock` (`--locked`); there are no prebuilt bottles in this initial tap.

## Verify

```sh
brew list newssourcecrawler/turtle/nsc-turtle
brew test newssourcecrawler/turtle/nsc-turtle
```

## Source and status

- Version: `0.0.1` (no upstream release tag yet).
- Pinned commit: `5dadf2f4c078efa396961b6725424674055f147a`.
- Source archive checksum (SHA-256): `db9158dc0e47d5524fa2ad0247ac4a11daf9f5232616b1d5b1513b4a46b2897f`.
- License: MIT OR Apache-2.0.
- Upstream workspace build: passed. Homebrew installation: not yet verified.
