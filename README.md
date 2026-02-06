# Doom One for Neovim

A faithful port of the [Doom One](https://github.com/doomemacs/themes) theme from Doom Emacs to Neovim, written in Lua.

![Neovim](https://img.shields.io/badge/Neovim-0.8%2B-blueviolet?logo=neovim&logoColor=white)

## Features

- Exact color palette from Doom Emacs `doom-one-theme.el`
- TreeSitter and LSP semantic token support
- LSP diagnostic highlight groups
- Built-in support for popular plugins:
  - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
  - [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
  - [which-key.nvim](https://github.com/folke/which-key.nvim)
  - [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  - [lazy.nvim](https://github.com/folke/lazy.nvim)
  - [nvim-notify](https://github.com/rcarriga/nvim-notify)
  - [mini.nvim](https://github.com/echasnovski/mini.nvim)
  - [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) theme included
- Configurable: transparent background, brighter comments, italic toggles
- Terminal colors

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "bashln/Doom-One.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("doom-one").setup()
    vim.cmd.colorscheme("doom-one")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "bashln/Doom-One.nvim",
  config = function()
    require("doom-one").setup()
    vim.cmd.colorscheme("doom-one")
  end,
}
```

## Configuration

Call `setup()` **before** loading the colorscheme. All options are optional.

```lua
require("doom-one").setup({
  brighter_comments = false,  -- use dark-cyan for comments instead of grey
  comment_bg = false,         -- subtle background for comments
  transparent = false,        -- disable background color
  terminal_colors = true,     -- set terminal ANSI colors
  italic_comments = true,     -- italicize comments

  plugins = {
    telescope = true,
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    neotree = true,
    whichkey = true,
    indent_blankline = true,
    lazy = true,
    notify = true,
    mini = true,
    dashboard = true,
  },
})

vim.cmd.colorscheme("doom-one")
```

## Lualine

The lualine theme is loaded automatically when using `doom-one` as your colorscheme:

```lua
require("lualine").setup({
  options = {
    theme = "doom-one",
  },
})
```

## Color Palette

| Color      | Hex       |
|------------|-----------|
| bg         | `#282c34` |
| fg         | `#bbc2cf` |
| red        | `#ff6c6b` |
| orange     | `#da8548` |
| green      | `#98be65` |
| teal       | `#4db5bd` |
| yellow     | `#ECBE7B` |
| blue       | `#51afef` |
| dark blue  | `#2257A0` |
| magenta    | `#c678dd` |
| violet     | `#a9a1e1` |
| cyan       | `#46D9FF` |
| dark cyan  | `#5699AF` |

## Credits

- Original theme by [Henrik Lissner](https://github.com/hlissner) ([doomemacs/themes](https://github.com/doomemacs/themes))
- Inspired by [Atom One Dark](https://github.com/atom/one-dark-ui)

## License

MIT
