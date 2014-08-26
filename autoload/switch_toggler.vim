
if 0 != get(g:,'loaded_switch_toggler', 0)
  finish
endif
let g:loaded_switch_toggler = 1

"
" 行数表示を切り替える
"
function! switch_toggler#number()
    if 0 == &l:number
        let &l:number = 1
    else
        let &l:number = 0
    endif
endfunction


"
" 折り返し表示設定を切り替える
"
function! switch_toggler#wrap()
    if 0 == &l:wrap
        let &l:wrap = 1
    else
        let &l:wrap = 0
    endif
endfunction

"
" タブの展開設定を切り替える
"
function! switch_toggler#expandtab()
    if 0 == &l:expandtab
        let &l:expandtab = 1
    else
        let &l:expandtab = 0
    endif
endfunction



