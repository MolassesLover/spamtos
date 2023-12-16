# SpamtonOS

## Sponsoring, Contributing & License

[![Ko-Fi](https://img.shields.io/badge/donate-kofi-blue?style=for-the-badge&logo=ko-fi&color=e57578&logoColor=FFFFFF&labelColor=262a35)](https://ko-fi.com/molasses)
[![Patreon](https://img.shields.io/badge/donate-patreon-blue?style=for-the-badge&logo=patreon&color=e57578&logoColor=FFFFFF&labelColor=262a35)](https://www.patreon.com/molasseslover)
[![MIT](https://choosealicense.com/licenses/mit/)
Feel free to contribute and make pull request, that surely will be accepted. For major changes, please open anissue first.

## Cloning
This repository **heavily** relies on Git submodules. You can clone 
the repository recursively to clone all submodules alongside SpamtOS.

```sh
➜ git clone --recursive https://github.com/MolassesLover/SpamtOS.git
```

If you've already cloned SpamtOS, you can run this command to
clone all submodules.

```sh
➜ git submodule update --init pkg/
```

## Dependencies
SpamtOS has very generic dependencies. Currently only
[Python](https://www.python.org/), [SCons](https://scons.org/), 
and [Rust](https://www.rust-lang.org/) are necessary.

## Building
SpamtOS uses [SCons](https://scons.org/) for compilation.
This resulted in building SpamtOS only taking one command.

```sh
➜ scons
```

## What's Really SpamtonOS
SpamtonOS is based on Spamton from Deltarune Chapter II, game by Toby Fox. This Operating System is in fact a very basic Linux Distribution, with it's own package style e.g. .deb for Debian.

It can be a really good ressource for beginners as the code is easy to understand, and only in ShellScript and Python for compilation.
