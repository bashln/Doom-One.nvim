# Doom-One.nvim

Tema inspirado no Doom One do Doom Emacs, convertido para Neovim.

## Instalação

```lua
-- lazy.nvim
{ "seu-usuario/Doom-One.nvim" }
```

### LazyVim

Crie ou edite `lua/plugins/colorscheme.lua`:

```lua
return {
  {
    "seu-usuario/Doom-One.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      colors = {},
      highlights = {},
    },
    config = function(_, opts)
      require("doom-one").setup(opts)
      vim.cmd.colorscheme("doom-one")
    end,
  },
}
```

## Uso

```lua
require("doom-one").setup({
  transparent = false,
})

vim.cmd.colorscheme("doom-one")
```

## Opções

As opções podem ser passadas no `setup`:

```lua
require("doom-one").setup({
  transparent = false,
  colors = {},
  highlights = {},
})
```

### transparent

Remove o fundo do tema para combinar com o background do terminal.

```lua
require("doom-one").setup({
  transparent = true,
})
```

### colors (alterar paleta)

Sobrescreve cores da paleta base.

```lua
require("doom-one").setup({
  colors = {
    bg = "#1b1f27",
    fg = "#c6d0f5",
    blue = "#7aa2f7",
  },
})
```

### highlights (customizar grupos)

Aceita uma tabela de grupos ou uma função que recebe a paleta final.

```lua
require("doom-one").setup({
  highlights = {
    Normal = { fg = "#c6d0f5", bg = "NONE" },
    Comment = { fg = "#8b949e", italic = true },
  },
})
```

```lua
require("doom-one").setup({
  highlights = function(colors)
    return {
      Search = { fg = colors.base0, bg = colors.yellow },
      Visual = { bg = colors.base3 },
    }
  end,
})
```

## Paleta principal

- bg: `#282c34`
- fg: `#bbc2cf`
- red: `#ff6c6b`
- orange: `#da8548`
- green: `#98be65`
- yellow: `#ECBE7B`
- blue: `#51afef`
- magenta: `#c678dd`
- violet: `#a9a1e1`
- cyan: `#46D9FF`
