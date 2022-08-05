set termguicolors

"let g:tokyonight_style = 'night'
"let g:tokyonight_italic_functions = 0
"let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
"
"Load Colorscheme
"colorscheme tokyonight
colorscheme gruvbox
" Configure icons n the bufferline.
let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = v:false
let bufferline.animation = v:true
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '|'
let bufferline.icon_close_tab = 'x'
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'
