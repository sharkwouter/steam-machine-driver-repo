# Alienware Steam Machine Driver Arch Repo

This repo contains build files for the Nvidia drivers for the Alienware Steam Machine for Arch Linux. They are automatically build and hosted as a pacman repository using Github actions. They can be downloaded with pacman.

**Note:**: This repo is still very much work in progress. Do not expect it to work yet.

## Pacman Repository

The pacman repository created from this repo is published to GitHub Pages by the GitHub Action in this repo. TThe repository can be configured in `pacman` like this at the bottom of `/etc/pacman.conf`:

```
[steam-machine]
SigLevel = Optional TrustAll
Server = https://sharkwouter.github.io/steam-machine-driver-repo/
```

For forks or alternative repos, sharkwouter in the url in the `Server` setting should be replaced with the owner of the fork. When forking, make sure to set the GitHub Pages source to `GitHub Actions` in the settings of the GitHub repo.

Take a look [here](https://sharkwouter.github.io/steam-machine-driver-repo/) to see which packages are available.

Installing packages can be done with:

```shell
pacman -Sy package
```

Replace package with the name of the package.

## Building individual packages

Building a single package from a clone of this repository can be useful if you wish to modify it in some way. It can be done by opening a terminal in the directory of the chosen library and running the following:

```
makepkg -i
```

This will build and install the package.
