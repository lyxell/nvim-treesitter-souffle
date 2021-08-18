## nvim-treesitter-souffle

### Installation

Using `vim-plug`:

```vim
call plug#begin('~/.vim/plugged')
Plug 'julienhenry/tree-sitter-souffle', { 'commit': '767ba95e2b0513c1b56d9a60488f1167a695fa73' }
Plug 'lyxell/nvim-treesitter-souffle'
call plug#end()
```

Then add the following to your config:

```vim
lua <<EOF
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.souffle = {
  install_info = {
    url = "'~/.vim/plugged/tree-sitter-souffle",
    files = {"src/parser.c"}
  }
}
EOF
```

Then run `:TSInstallFromGrammar souffle`
