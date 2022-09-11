" NVIM TREE SETUP
set encoding=UTF-8
let g:airline_powerline_fonts = 1

let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 0 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_width_allow_resize  = 0 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics

lua << EOF
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = true,
  hijack_cursor       = false,
  update_cwd          = false,
  diagnostics = {
    enable = false,
    icons = {
      hint = "?",
      info = "i",
      warning = "!",
      error = "X",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  renderer = {
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      }
    },
    special_files = {'README.md', 'Makefile', 'MAKEFILE'}, --List of filenames that gets highlighted with NvimTreeSpecialFile
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    adaptive_size = false,
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {}
    },
    number = true,
    relativenumber = false,
    signcolumn = "yes"
  },
  actions = {
    open_file = {
      resize_window = false,
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
EOF
