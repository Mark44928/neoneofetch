<h3 align="center">neoneofetch</h3>
<p align="center">A command-line system information tool written in bash 3.2+</p>

<p align="center">
<a href="./LICENSE.md"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
<a href="https://github.com/Mark44928/neoneofetch/releases"><img src="https://img.shields.io/github/v/release/Mark44928/neoneofetch?color=blue"></a>
</p>

A fork of [neofetch](https://github.com/dylanaraps/neofetch) with a refreshed visual style and built-in Termux support.

```
◇ user@host
━━━━━━━━━━━━━━━━━━━━━━
  OS        → Android 12 aarch64
  Host      → MyPhone myT10
  Kernel    → 4.19.191
  Uptime    → 1 day, 19 hours
  Shell     → zsh 5.9.1
  Packages  → 895 (pkg)
  Terminal  → Termux
  CPU       → MT6762 (8) @ 2.001GHz
  Memory    → 2993MiB / 3813MiB
```

## Install

### Termux
```sh
pkg install git
git clone https://github.com/Mark44928/neoneofetch
cd neoneofetch
bash install.sh
```

### Linux / macOS
```sh
git clone https://github.com/Mark44928/neoneofetch
cd neoneofetch
make install
# or
bash install.sh
```

## What changed from neofetch

| Feature | neofetch | neoneofetch |
|---|---|---|
| Title prefix | None | `◇` diamond |
| Title underline | `━` thick rule | `━` colored accent |
| Info labels | `Label: value` | `Label → value` aligned |
| Separator | `:` or custom | `→` arrow |
| Progress bars | `▱`/`▰` | `░`/`▓` |
| Termux | Not supported | Built-in |
| JSON output | Broken commas | Valid RFC 8259 |
| Package detection | Single backend | `pkg`, `dpkg`, `apt` |

## License

[MIT](./LICENSE.md)
