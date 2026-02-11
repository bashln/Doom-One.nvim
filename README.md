<div align="center">
  <img src="https://raw.githubusercontent.com/bashln/Doom-One.nvim/main/assets/logo.png" alt="Doom One" width="200" />
  <h1>Doom-One.nvim</h1>
  <p>
    Um port fiel e vibrante do tema <b>Doom One</b> do Doom Emacs para o Neovim.
  </p>

  <p>
    <a href="https://github.com/bashln/Doom-One.nvim/stargazers"><img src="https://img.shields.io/github/stars/bashln/Doom-One.nvim?style=for-the-badge&logo=github&color=51afef&logoColor=282c34" alt="Stars" /></a>
    <a href="https://github.com/bashln/Doom-One.nvim/blob/main/LICENSE"><img src="https://img.shields.io/github/license/bashln/Doom-One.nvim?style=for-the-badge&logo=opensourceinitiative&color=98be65&logoColor=282c34" alt="License" /></a>
  </p>
</div>

---

## 📸 Screenshots

*Em breve...*

## ✨ Características

- 🎨 **4 Variantes**: Dark, Darker, Vibrant e Light.
- 🚀 **Performance**: Escrito inteiramente em Lua, otimizado para o Neovim moderno.
- 🛠️ **Modular**: Estrutura organizada e fácil de estender.
- 🔌 **Integrações**: Suporte nativo para os plugins mais populares (LazyVim compatível).
- ⚙️ **Customizável**: Ajuste estilos de fontes (itálico/negrito) e cores facilmente.

## 🌈 Sabores

| Variante | Descrição |
| --- | --- |
| `dark` | O clássico Doom One (padrão). |
| `darker` | Uma versão com fundo mais profundo e escuro. |
| `vibrant` | Alto contraste inspirado no TokyoNight, mantendo a alma do Doom One. |
| `light` | Uma variante clara elegante e legível. |

## 📦 Instalação

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "bashln/Doom-One.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("doom-one").setup({
      -- suas configurações aqui
    })
    vim.cmd.colorscheme("doom-one")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "bashln/Doom-One.nvim",
  config = function()
    require("doom-one").setup()
    vim.cmd.colorscheme("doom-one")
  end
})
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'bashln/Doom-One.nvim'

" No seu init.lua ou init.vim
lua << EOF
require("doom-one").setup()
vim.cmd.colorscheme("doom-one")
EOF
```

## ⚙️ Configuração

O `setup` é opcional. Se você não chamar, o tema usará os padrões abaixo:

```lua
require("doom-one").setup({
  transparent = false, -- desabilita o fundo para transparência do terminal
  background = "dark", -- "dark", "darker", "vibrant", "light"
  colors = {}, -- sobrescreve cores da paleta
  highlights = {}, -- sobrescreve grupos de destaque
  styles = {
    comments = { italic = true },
    conditionals = { italic = true },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
    all = true, -- habilita todas as integrações
    -- ou habilite individualmente:
    -- telescope = true,
    -- neotree = true,
    -- ...
  },
})
```

## 🔌 Integrações

Doom-One suporta nativamente uma vasta gama de plugins, incluindo:

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Nvim-Tree](https://github.com/nvim-tree/nvim-tree.lua)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [Noice](https://github.com/folke/noice.nvim)
- [Trouble](https://github.com/folke/trouble.nvim)
- [Which-Key](https://github.com/folke/which-key.nvim)
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [Indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [Nvim-notify](https://github.com/rcarriga/nvim-notify)
- [Flash.nvim](https://github.com/folke/flash.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- E muitos outros!

### Lualine

Para usar o tema no Lualine:

```lua
require('lualine').setup {
  options = {
    theme = 'doom-one', -- Ele detecta automaticamente se você estiver usando o colorscheme
  }
}
```

---

<div align="center">
  Feito com ❤️ inspirado pelo Doom Emacs e Catppuccin.
</div>
