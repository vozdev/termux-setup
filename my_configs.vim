" mouse support #

set mouse=a

" json color comment resolve #

autocmd FileType json syntax match Comment +\/\/.\+$+

" C set as function to call CocConfig #

function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

call SetupCommandAbbrs('C', 'CocConfig')

" Set , as leader key for Emmet #

let g:user_emmet_leader_key=','

call plug#begin('~/.vim_runtime/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'

" Initialize plugin system
call plug#end()
