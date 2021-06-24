let $FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{**/node_modules/**,.git/*,**/*.pem}"'
let $FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>