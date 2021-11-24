"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2021 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

let g:gruvbox_contrast_dark="hard"

func! s:transparent_background()
    highlight Normal guibg=NONE ctermbg=NONE
    " highlight NonText guibg=NONE ctermbg=NONE
endf
autocmd ColorScheme * call s:transparent_background()

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
