" command
command! SwitchTogglerNumber    call switch_toggler#number()
command! SwitchTogglerWrap      call switch_toggler#wrap()
command! SwitchTogglerExpandTab call switch_toggler#expandtab()
command! SwitchTogglerSyntax    call switch_toggler#syntax()

" unite-sorce
let s:unite_source = {"name": "switch_toggler"}
function! s:unite_source.gather_candidates(args, context)
  let cmds = {
  \ "number"    : "SwitchTogglerNumber",
  \ "wrap"      : "SwitchTogglerWrap",
  \ "expandtab" : "SwitchTogglerExpandTab",
  \ "syntax"    : "SwitchTogglerSyntax",
  \ }

  return values(map(cmds, "{
  \ 'word'   : v:key,
  \ 'source' : 'switch_toggler',
  \ 'kind'   : 'command',
  \ 'action__command' : v:val
  \ }"))
endfunction

call unite#define_source(s:unite_source)
unlet s:unite_source


" key map
nnoremap <silent> <Plug>(switch-toggler-unite) :Unite switch_toggler<CR>
" e.g)
" nmap <Leader>st <Plug>(switch-toggler-unite)




