# desmondlee95700 Homebrew Tap

Homebrew casks for projects maintained by
[@desmondlee95700](https://github.com/desmondlee95700).

## Packages

| Package | Type | Description | Install |
| --- | --- | --- | --- |
| [AIUsage](https://github.com/desmondlee95700/AIUsage) | Cask | Menu bar tracker for AI model quotas and credits | `brew install --cask desmondlee95700/tap/aiusage` |

Using a fully qualified package name automatically adds and trusts this tap. To
add it manually instead, run:

```sh
brew tap desmondlee95700/tap
brew trust desmondlee95700/tap
```

After the tap is installed, package names can be shortened for routine
operations, for example:

```sh
brew upgrade --cask aiusage
```

## Package notes

### AIUsage

AIUsage is not notarized yet, so macOS asks for approval on first launch. Open
**System Settings → Privacy & Security** and click **Open Anyway**.

AIUsage updates itself; `brew upgrade --cask aiusage` works too.

Uninstall the application while keeping its settings:

```sh
brew uninstall --cask aiusage
```

Remove AIUsage together with its settings:

```sh
brew uninstall --zap --cask aiusage
```

## Maintenance

- Casks live in `Casks/`.
- Every package uses a versioned, immutable upstream release.
- Published release assets must never be replaced in place.
- Every versioned download pins its matching SHA-256 checksum.
- Stable AIUsage releases bump the cask automatically from its release workflow.
- CI audits the tap and installs and uninstalls every cask.
