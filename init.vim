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

set clipboard+=unnamedplus

"" Custom Keybinds uwu
"Show files in the current dir
noremap <Space>ff :GFiles <CR>
" Show git files
noremap <Space>gf :Files <CR>
" Show git status return
noremap <Space>gF :GFiles? <CR>
" Show the opens buffers
noremap <Space>bb :Buffers <CR>
" Show the aviable colorschemes
noremap <Space>Ts :Colors <CR>
" Search all the words in the files
noremap <Space>srr :Rg <CR>
" Search by number line
noremap <Space>sl :Lines <CR>
" Search by number line in the current buffer
noremap <Space>sL :BLines <CR>
" Show the files history
noremap <Space>Hh :History <CR>
" Show the commands history
noremap <Space>HH :History: <CR>
" Show the Ultisnips configuration
noremap <Space>Hs :Snippets <CR>
" Show the git commits
noremap <Space>gc :Commits <CR>
" Show the git commits int the current buffer
noremap <Space>gC :BCommits <CR>
" Show all the filetypes
noremap <Space>lc :Filetypes <CR>
" Show all the marks
noremap <Space>Hm :Marks<CR>
" Show all the windows
noremap <Space>Hw :Windows<CR>

" Config Coc-Prettier command :Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" FZF config  layout
let g:fzf_layout = { 'down': '10'}

" Main execute SpaceVim
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
