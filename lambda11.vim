try
  sandbox let F = lambda('')
  echoerr "Shouldn't pass"
catch /^Vim\%((\a\+)\)\=:E48/
endtry
