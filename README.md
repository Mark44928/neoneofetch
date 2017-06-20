# Neoneofetch

[![Gitter](https://badges.gitter.im/dylanaraps/fetch.svg)](https://gitter.im/dylanaraps/fetch?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Freenode](https://img.shields.io/badge/%23neoneofetch-%20on%20Freenode-brightgreen.svg)](http://irc.lc/freenode/neoneofetch)
[![Build Status](https://travis-ci.org/dylanaraps/neoneofetch.svg?branch=master)](https://travis-ci.org/dylanaraps/neoneofetch)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE.md)
[![Latest release](https://img.shields.io/github/release/dylanaraps/neoneofetch.svg)](https://github.com/dylanaraps/neoneofetch/releases)

Neoneofetch is a CLI system information tool written in BASH. Neoneofetch displays information about your system next to an image, your OS logo, or any ASCII file of your choice. The main purpose of Neoneofetch is to be used in screenshots to show other users what OS/Distro you're running, what Theme/Icons you're using etc.

Neoneofetch is highly customizable through the use of command line flags or the user config file. There are over 50 config options to mess around with and there's the `print_info()` function and friends which let you add your own custom info.

Neoneofetch can be used on any OS that has BASH 3.2+, it's just a matter of adding support. If your OS/Distro isn't in the list below, feel free to open an issue on the repo and I'll gladly add support. Neoneofetch currently supports `Linux`, `MacOS`, `iOS`, `BSD`, `Solaris`, `Android`, `Haiku`, `GNU Hurd`, `MINIX`, `AIX`, `IRIX`, and `Windows (Cygwin/MSYS2/MinGW/Windows 10 Linux subsystem)`.

For more information:

**https://github.com/dylanaraps/neoneofetch/wiki**

![neoneofetch screenshot](https://u.teknik.io/KlBsD.png)


## Dependencies

https://github.com/dylanaraps/neoneofetch/wiki/Dependencies


## Installation

https://github.com/dylanaraps/neoneofetch/wiki/Installation


## Post Install


### Using the config file

Neoneofetch will by default create a config file at `$HOME/.config/neoneofetch/config` and this file contains all of the script's options/settings. The config file allows you to keep your customizations between script versions and allows you to easily share your customizations with other people.

You can launch the script without a config file by using the flag `--config none` and you can specify a custom config location using `--config path/to/config`.

See this wiki page for the default config: https://github.com/dylanaraps/neoneofetch/wiki/Config-File


### Customizing what info gets displayed

https://github.com/dylanaraps/neoneofetch/wiki/Customizing-Info


### Customizing the script using a custom alias

If you don't want to use the config file you can customize almost everything using launch flags.

Here's an example neoneofetch alias:

```sh
alias neoneofetch2="neoneofetch \
--config off \
--block_range 1 8 \
--bold off \
--uptime_shorthand on \
--gtk_shorthand on \
--colors 4 1 8 8 8 7 \
"
```


## Thanks

Thanks to:

- [Contributors](https://github.com/dylanaraps/neoneofetch/contributors)
    - Thanks for making Neoneofetch better, I really appreciate it.
- [Packagers](https://github.com/dylanaraps/neoneofetch/issues/115)
    - Thanks for maintaining Neoneofetch packages.
- Users
    - Thanks for using Neoneofetch!
- [Screenfetch](https://github.com/KittyKatt/screenFetch):
    - We've used some snippets as a base for a few functions in this script.
    - Some of the ASCII logos.
- [ufetch](https://github.com/jschx/ufetch):
    - Tiny ASCII logos
