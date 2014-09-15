function! s:foo()
  let x = 2
  return lambda('return a:000 + [x]')
endfunction
function! s:bar()
  return s:foo()(1)
endfunction

echo s:bar() | " [1,2]
