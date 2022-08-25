Neovim Sensible
================

## Contents

-   [Introduction](#introduction)
-   [Changes](#changes)
    -   [Settings](#settings)
    -   [Auto-commands](#auto-commands)
    -   [Mappings](#mappings)

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

### Auto-commands

-   disable marking tab and space characters for `diff` files
-   disable spell-checking (if it is enabled) for `diff` files
-   set the `textwidth` to 50 for `gitcommit` files
-   start `gitcommit` files in insert mode
-   enable 24-bit colours if the terminal supports it
-   set the spell-checker language to the locale’s default language

### Mappings

#### Completion

<table>
<thead>
<tr>
<th style="text-align:left;">
Mode
</th>
<th style="text-align:left;">
Key
</th>
<th style="text-align:left;">
Mapping
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Insert
</td>
<td style="text-align:left;font-family: monospace;">
Control-Space
</td>
<td style="text-align:left;">
Omni complete
</td>
</tr>
<tr>
<td style="text-align:left;">
Insert
</td>
<td style="text-align:left;font-family: monospace;">
Control-L
</td>
<td style="text-align:left;">
Line complete
</td>
</tr>
</tbody>
</table>

#### Clipboard

<table>
<thead>
<tr>
<th style="text-align:left;">
Mode
</th>
<th style="text-align:left;">
Key
</th>
<th style="text-align:left;">
Mapping
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Normal
</td>
<td style="text-align:left;font-family: monospace;">
Control-Y
</td>
<td style="text-align:left;">
Copy file contents to clipboard
</td>
</tr>
<tr>
<td style="text-align:left;">
Normal
</td>
<td style="text-align:left;font-family: monospace;">
Control-P
</td>
<td style="text-align:left;">
Paste from clipboard
</td>
</tr>
<tr>
<td style="text-align:left;">
Visual
</td>
<td style="text-align:left;font-family: monospace;">
Shift-Y
</td>
<td style="text-align:left;">
Copy to clipboard
</td>
</tr>
<tr>
<td style="text-align:left;">
Visual
</td>
<td style="text-align:left;font-family: monospace;">
Shift-D
</td>
<td style="text-align:left;">
Cut to clipboard
</td>
</tr>
</tbody>
</table>

#### Movement

<table>
<thead>
<tr>
<th style="text-align:left;">
Mode
</th>
<th style="text-align:left;">
Key
</th>
<th style="text-align:left;">
Mapping
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Insert
</td>
<td style="text-align:left;font-family: monospace;">
Up
</td>
<td style="text-align:left;">
Go up even when a completion menu is visible
</td>
</tr>
<tr>
<td style="text-align:left;">
Insert
</td>
<td style="text-align:left;font-family: monospace;">
Down
</td>
<td style="text-align:left;">
Go down even when a completion menu is visible
</td>
</tr>
<tr>
<td style="text-align:left;">
Insert
</td>
<td style="text-align:left;font-family: monospace;">
Return
</td>
<td style="text-align:left;">
Return even when a completion menu is visible
</td>
</tr>
</tbody>
</table>
