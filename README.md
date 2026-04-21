# homebrew-teenyapps

Homebrew tap for the [TeenyApps](https://teenyapps.com) family of macOS menu bar utilities.

## Install

One command per app — Homebrew auto-taps on first use:

```bash
brew install --cask johnsciacchitano/teenyapps/teenyclip
```

Install the whole suite in one shot:

```bash
brew install --cask johnsciacchitano/teenyapps/teenyapps
```

After the first install you can drop the `johnsciacchitano/teenyapps/` prefix:

```bash
brew install --cask teenycolor
brew upgrade --cask teenyclip
brew uninstall --cask teenyclip
```

## Available casks

| Cask | App | Site |
|---|---|---|
| `teenyclip` | TeenyClip | https://teenyclip.com |
| `teenycolor` | TeenyColor | https://teenycolor.com |
| `teenydisplay` | TeenyDisplay | https://teenydisplay.com |
| `teenymute` | TeenyMute | https://teenymute.com |
| `teenyscreeny` | TeenyScreeny | https://teenyscreeny.com |
| `teenyshelf` | TeenyShelf | https://teenyshelf.com |
| `teenysound` | TeenySound | https://teenysound.com |
| `teenystat` | TeenyStat | https://teenystat.com |
| `teenytool` | TeenyTool | https://teenytool.com |
| `teenyapps` | *meta-cask — installs all of the above* | |

## Updating a release

`bin/update-cask.sh <cask-name> <version> <path-to-dmg>` rewrites the cask's `version` and `sha256` in place. Intended to be called from each app's `release.sh` after the DMG is notarized and copied to `downloads/`.

## License

MIT.
