# homebrew-tap
Homebrew tap for lestex's projects: brew tap lestex/tap

## AgentTray

Agent usage limits in the macOS menu bar.

```sh
brew install --cask lestex/tap/agenttray
```

The app is ad-hoc signed rather than notarised, so add `--no-quarantine` if
macOS refuses to open it:

```sh
brew install --cask --no-quarantine lestex/tap/agenttray
```
