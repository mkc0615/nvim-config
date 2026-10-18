## how to use
- install neovim with brew if using mac (`brew install neovim`, 0.10+)
- git clone this repo to ~/.config/nvim
- run `nvim` — lazy.nvim installs plugins on first launch, mason installs language servers

## layout
```
init.lua              -- sets leader, loads lua/config/*
lua/config/
  options.lua         -- vim options
  keymaps.lua         -- general keymaps (plugin keymaps live with their plugin)
  lazy.lua            -- lazy.nvim bootstrap + setup
lua/plugins/          -- one plugin spec per file, auto-imported by lazy.nvim
  lsp/                -- mason, lspconfig, lazydev
```
