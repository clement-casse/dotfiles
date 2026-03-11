# Personal dotfiles managed by [`chezmoi`](https://www.chezmoi.io)

This repo is me trying to move out of Nix Home-Manager (and more generally Nix) after years of dispointments.

To set up a new macOS computer, run the following

- Install Developper tools
```zsh
xcode-select --install;
```

- Install HomeBrew
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
```

- Install chezmoi
```zsh
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin
```
