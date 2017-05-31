au GUIEnter * simalt ~x

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" => YCM
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Go to implementation
nnoremap <leader>gd : YcmCompleter GoToImplementationElseDeclaration<cr>

"reload solution when files were changed
nnoremap <leader>rl : YcmCompleter ReloadSolution<cr>

set nowrap
set noswapfile


function _FormatJSON ()
    set nobomb
    %!python -m json.tool
endfunction

"com! FormatJSON %!python -m json.tool
com! FormatJSON call _FormatJSON ()

"Always showd bookmark on nerdtree
let NERDTreeShowBookmarks = 1

set wildignore+=*.meta

"Save automatically when lose focus
:au FocusLost * silent! wa 


""""""""""""""""""""""""""""""""""
"
"  Function for Convert flatbuffer
"
""""""""""""""""""""""""""""""""""

function _ConvertFB()
    cd d:\Project\Borluse_YosemiX\Assets\Configs\
    !ConvertFlatBuffer.exe
endfunction

com! ConvertMainFB call _ConvertFB()


""""""""""""""""""""""""""""""""""
"
"  vim-autoformat
"
""""""""""""""""""""""""""""""""""

let g:formatterpath = ['~/OneDrive/Vimrc/Extension/AStyle/AStyle.exe']

""""""""""""""""""""""""""""""""""
"
"  Map jk to esc
"
""""""""""""""""""""""""""""""""""

imap jk <Esc>

set nu

highlight Pmenu guibg=brown gui=bold


"""""""""""""""""""""
" Colorscheme
"
"""""""""""""""""""""""
"set background=dark
"colorscheme peaksea
