# Homebrew Tap for Rona

This is the official Homebrew tap for [Rona](https://github.com/rona-rs/rona) - a powerful CLI tool to streamline your Git workflow.

## Installation

### Quick Install

```bash
brew install rona-rs/rona/rona
```

### Or with tap

```bash
brew tap rona-rs/rona
brew install rona
```

After installation, initialize Rona with your preferred editor:

```bash
rona init vim  # or nano, zed, "code --wait", etc.
```

## Updating

To update to the latest version:

```bash
brew update
brew upgrade rona
```

## Uninstallation

```bash
brew uninstall rona
brew untap rona-rs/rona
```

## What is Rona?

Rona is a Rust-based CLI tool that enhances your Git workflow with:

- 🚀 Intelligent file staging with pattern exclusion
- 📝 Structured commit message generation
- 🔄 Streamlined push operations
- 🎯 Interactive commit type selection
- 🎨 Customizable commit message templates
- 🛠 Multi-shell completion support
- 🔐 Auto-detected GPG commit signing

## Quick Usage

```bash
# Stage files (excluding specific patterns)
rona -a "*.log" "*.tmp"

# Generate commit message (interactive mode)
rona -g -i

# Commit and push
rona -c -p
```

## Documentation

- [Main Repository](https://github.com/rona-rs/rona)
- [Wiki](https://github.com/rona-rs/rona-wiki)
- [Installation Guide](https://github.com/rona-rs/rona-wiki/blob/main/Installation.md)
- [Usage Guide](https://github.com/rona-rs/rona-wiki/blob/main/Usage-Guide.md)

## Issues

If you encounter any problems, please [open an issue](https://github.com/rona-rs/rona/issues) on the main repository.

## License

Rona is dual-licensed under Apache-2.0 OR MIT.
