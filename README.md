# eduardomoroni dotFiles


## TODO
After mixing-up, topical components features is not working as expected. Following items was fixed:
- [X] **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- [X] **Brewfile**: This is a list of applications for [Homebrew Cask](https://caskroom.github.io) to install. Might want to edit this file before running any initial setup.
- [ ] **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- [ ] **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- [ ] **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- [X] **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- [X] **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.

## before installing
Before you go into an one command install please double-check following items and customize accordingly
- [Brewfile](https://github.com/eduardomoroni/dotfiles/blob/master/Brewfile).
- [.zshrc.d](https://github.com/eduardomoroni/dotfiles/tree/master/.zshrc.d)
- Topics. You might don't want install `yarn` for instance, then just delete [yarn](https://github.com/eduardomoroni/dotfiles/tree/master/yarn) folder, you might want to add new topics, refer to [holman/dotfiles](https://github.com/holman/dotfiles)

NOTE: DO NOT delete this folders: `dotbot`, `zsh-quickstart-kit`, `zgen`, `script`, `functions`, `.zshrc.d`. They are important for the proccess of installing dotFiles.

## install

Run this:

```sh
git clone https://github.com/eduardomoroni/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install
```

First of all, this will run [dotbot](https://github.com/anishathalye/dotbot) based on [this configuration](https://github.com/eduardomoroni/dotfiles/blob/master/install.conf.yaml). This will symlink the appropriate files in `.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles`.

Customizations can be done by following [zsh-quickstart-kit customizations](https://github.com/unixorn/zsh-quickstart-kit#customizations) or following [components customization](https://github.com/eduardomoroni/dotFiles#components)

The main folder you'll want to take a look at is [./zshrc.d](https://github.com/eduardomoroni/dotfiles/tree/master/.zshrc.d),
which sets up a few configuration that'll be different on your particular machine.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](https://caskroom.github.io) to install. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.

## Thank you guys!

I forked [Zach Holman](https://github.com/holman)' excellent
[dotfiles](https://github.com/holman/dotfiles) then mixed-up with [zsh-quickstart-kit](https://github.com/unixorn/zsh-quickstart-kit) and [dotbot](https://github.com/anishathalye/dotbot).  
Inspired from [Ryan Bates'](http://github.com/ryanb) [original project.](http://github.com/ryanb/dotfiles)
