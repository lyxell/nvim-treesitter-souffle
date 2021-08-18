## nvim-treesitter-souffle

Based on the grammar https://github.com/julienhenry/tree-sitter-souffle

Requires neovim 0.5 or later and [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).

### 1. Installation

#### Using the built-in package manager

```
mkdir -p ~/.config/nvim/pack/plugins/start/
git clone https://github.com/julienhenry/tree-sitter-souffle.git ~/.config/nvim/pack/plugins/start/tree-sitter-souffle
git clone https://github.com/lyxell/nvim-treesitter-souffle.git ~/.config/nvim/pack/plugins/start/nvim-treesitter-souffle
```

#### Using vim-plug

```vim
call plug#begin('~/.vim/plugged')
Plug 'julienhenry/tree-sitter-souffle'
Plug 'lyxell/nvim-treesitter-souffle'
call plug#end()
```

### 2. Configuration

* Add the following to your config:

```vim
lua <<EOF
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.souffle = {
  install_info = {
--  change this path to wherever you installed julienhenry/tree-sitter-souffle
    url = "~/.config/nvim/pack/plugins/start/tree-sitter-souffle",
    files = {"src/parser.c"}
  }
}
EOF
```

* Then run `:TSInstallFromGrammar souffle`
