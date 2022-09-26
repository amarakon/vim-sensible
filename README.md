Neovim Sensible
================

## Contents

-   <a href="#introduction" id="toc-introduction">Introduction</a>
-   <a href="#changes" id="toc-changes">Changes</a>
    -   <a href="#settings" id="toc-settings">Settings</a>
    -   <a href="#auto-commands" id="toc-auto-commands">Auto-commands</a>
    -   <a href="#mappings" id="toc-mappings">Mappings</a>
-   <a href="#installation" id="toc-installation">Installation</a>
    -   <a href="#vim" id="toc-vim">Vim</a>
    -   <a href="#neovim" id="toc-neovim">Neovim</a>

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

-   window title is enabled

-   default `titlestring` is `"Neovim – %t%( %m%)"`

-   line numbering (`number` and `relativenumber`) is enabled

-   `foldenable` is disabled

-   mouse is for Vim and not the terminal

-   `cursorline` is enabled

-   the default indentation level is set to 4 instead of 8

-   `smartindent` is enabled

-   `termbidi` is enabled for right-to-left language writers

-   `colorcolumn` is set to `textwidth` + 1

-   do not show the hideous netrw banner

### Auto-commands

-   disable marking tab and space characters for `diff` files
-   disable spell-checking (if it is enabled) for `diff` and `ebuild`
    files
-   set the `textwidth` to 72 for `gitcommit` files
-   set two `colorcolumn`s for `gitcommit`: 51 and 73
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
`# user` git clone https://github.com/amarakon/vim-sensible ~/.vim/pack/vendor/start/vim-sensible
```

### Neovim

``` sh
`# user` git clone https://github.com/amarakon/vim-sensible ~/.local/share/nvim/site/pack/default/start/vim-sensible
```
