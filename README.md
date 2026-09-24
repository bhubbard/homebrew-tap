# Homebrew Tap for Brandon Hubbard (`bhubbard/tap`)

Official Homebrew tap for packages maintained by [@bhubbard](https://github.com/bhubbard).

## Available Formulae

| Formula | Description | Install |
| :--- | :--- | :--- |
| **`apfel`** / **`apfel-rs`** | Apple Intelligence & Foundation Models CLI and local OpenAI-compatible API server in Rust | `brew install bhubbard/tap/apfel-rs` |

## Installation

```bash
brew tap bhubbard/tap
brew install apfel-rs
```

Or install directly in one step:
```bash
brew install bhubbard/tap/apfel-rs
```

## Background Server Service

To start the local OpenAI-compatible API server in the background and restart on login:

```bash
brew services start apfel-rs
```

To stop:
```bash
brew services stop apfel-rs
```

## Documentation

- [apfel-rs GitHub Repository](https://github.com/bhubbard/apfel-rs)
- [Homebrew Documentation](https://docs.brew.sh)
