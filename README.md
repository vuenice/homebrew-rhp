# homebrew-rhp

Official [Homebrew](https://brew.sh/) tap for [RHP](https://rhp.dev) (Rust-Powered High-Performance PHP-Family Language and JIT Runtime).

## Installation

You can install `rhp` directly with a single command:

```bash
brew install vuenice/rhp/rhp
```

Or tap the repository first and then install:

```bash
brew tap vuenice/rhp
brew install rhp
```

## Update

To upgrade `rhp` when a new version is released:

```bash
brew update
brew upgrade rhp
```

## Verify Installation

```bash
rhp -v
```

## Uninstall

```bash
brew uninstall rhp
brew untap vuenice/rhp
```

## Repository Structure

```
.
├── Formula/
│   └── rhp.rb     # Homebrew formula definition
├── .gitignore
├── LICENSE
└── README.md
```

## Links

- **Website**: [https://rhp.dev](https://rhp.dev)
- **Source Repository**: [https://github.com/vuenice/rhp](https://github.com/vuenice/rhp)
