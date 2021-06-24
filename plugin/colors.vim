let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

let g:morphisor_colorscheme="gruvbox"
fun! ColorMyTerminal()
    let g:gruvbox_contrast_dark = "hard"
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:morphisor_colorscheme])
    else
        colorscheme gruvbox
    endif

    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun
call ColorMyTerminal()