# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git
```
pacman -S git
```

### Stow
```
pacman -S stow
```

## Installation

First, check out the repository to your home directory
```
$ git clone git@github.com/timothewt/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
```

Then use GNU Stow to symlink the dotfiles to your home directory
```
$ stow .
```

## References
[https://www.youtube.com/watch?v=y6XCebnB9gs](https://www.youtube.com/watch?v=y6XCebnB9gs)
