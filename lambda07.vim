function! s:foo()
  let x = 0
  return lambda("
  \ let x += 1 \n
  \ return x
  \")
endfunction

let F = s:foo()
echo F() | " 1
echo F() | " 2
echo F() | " 3
echo F() | " 4
