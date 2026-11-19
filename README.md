
# Turtle — Homebrew Tap

Homebrew distribution for [NSC Turtle](https://github.com/newssourcecrawler/nsc_turtle), an open-source, local-first custody ledger and bounded workflow runner.

## Installation

Requires macOS on Apple Silicon (arm64).

```sh
brew install newssourcecrawler/turtle/nsc-turtle
```

Installs two executables:
- `turtle`
- `brownout`

Precompiled binaries are distributed through GitHub Releases. No Rust toolchain is required for installation.

## Verification

```sh
brew test newssourcecrawler/turtle/nsc-turtle
```

## Release

- Version: 0.0.1
- Source tag: v0.0.1
- Source commit: 5dadf2f4c078efa396961b6725424674055f147a
- Platform: macOS arm64
- License: MIT OR Apache-2.0

Source code and release artifacts:
https://github.com/newssourcecrawler/nsc_turtle

The initial binary archive was compiled locally. Reproducible-build verification and additional platform support are not yet established.
