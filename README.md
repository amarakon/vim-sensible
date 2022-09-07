Neovim Sensible
================

## Contents

-   [Introduction](#introduction)
-   [Changes](#changes)
    -   [Settings](#settings)
    -   [Auto-commands](#auto-commands)
    -   [Mappings](#mappings)
-   [Installation](#installation)
    -   [Vim](#vim)
    -   [Neovim](#neovim)

## Introduction

Neovim’s defaults are pretty good. They are much better than Vim’s at
least. But they could be improved, which is why I created this plugin.
It is inspired by [vim-sensible](https://github.com/tpope/vim-sensible),
but vim-sensible’s changes are only useful to Vim users and not Neovim
users because Neovim is already more sensible than Vim. Technically, you
can use this plugin even if you are a Vim user, but it is intended for
Neovim users. If you use Vim, I recommend installing both vim-sensible
and Neovim Sensible.

## Changes

### Settings

-   file encoding is set to UTF-8

-   window title is enabled

-   line numbering (`number` and `relativenumber`) is enabled

-   `numberwidth` and `foldlevel` are set to 1

-   mouse is for Vim and not the terminal

-   tabs and spaces are shown with a character

-   `cursorline` is enabled

-   the default indentation level is set to 4 instead of 8

-   `smartindent` is enabled

-   `termbidi` is enabled for right-to-left language writers

-   `colorcolumn` is set to equal `textwidth` + 1

-   default `titlestring` is `"Neovim – %t%( %m%)"`

-   do not show the hideous netrw banner

### Auto-commands

-   disable marking tab and space characters for `diff` files
-   disable spell-checking (if it is enabled) for `diff` and `ebuild`
    files
-   set the `textwidth` to 50 for `gitcommit` files
-   start `gitcommit` files in insert mode
-   enable 24-bit colours if the terminal supports it
-   set the spell-checker language to the locale’s default language

### Mappings

#### Completion

| Mode   | Key           | Mapping       |
|:-------|:--------------|:--------------|
| Insert | Control-Space | Omni complete |
| Insert | Control-L     | Line complete |

#### Clipboard

| Mode   | Key      | Mapping                         |
|:-------|:---------|:--------------------------------|
| Normal | Leader-Y | Copy file contents to clipboard |
| Normal | Leader-P | Paste from clipboard            |
| Visual | Shift-Y  | Copy to clipboard               |
| Visual | Shift-D  | Cut to clipboard                |

#### Movement

| Mode   | Key    | Mapping                                        |
|:-------|:-------|:-----------------------------------------------|
| Insert | Up     | Go up even when a completion menu is visible   |
| Insert | Down   | Go down even when a completion menu is visible |
| Insert | Return | Return even when a completion menu is visible  |

## Installation

### Vim

``` sh
`# user` git clone https://github.com/amarakon/nvim-sensible ~/.vim/pack/vendor/start/nvim-sensible
```

### Neovim

``` sh
`# user` git clone https://github.com/amarakon/nvim-sensible ~/.local/share/nvim/site/pack/default/start/nvim-sensible
```
