function! s:gen() abort
    let pl= l:
    let Hoge= lambda('return get(pl, "Hoge", get(pl, "Fuga", lambda("")))')
    let Fuga= Hoge
    delfunction Hoge
    return Fuga
endfunction
 
let F= s:gen()
try
  echo F()
  echoerr "Shouldn't pass"
catch /^Vim\%((\a\+)\)\=:E117/
  echo 'Got E117' | " Got E117
endtry
