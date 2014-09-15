try
  sandbox let F = lambda('')
  echoerr "Shouldn't pass"
catch /^Vim\%((\a\+)\)\=:E48/
  echo 'Got E48' | " Got E48
endtry
