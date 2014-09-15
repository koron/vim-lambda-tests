function! s:foo(X)
  return a:X() " s:bar にある x を参照したい
endfunction

function! s:bar()
  let x = 123
  return s:foo(lambda('return x'))
endfunction

echo s:bar() | " 123
