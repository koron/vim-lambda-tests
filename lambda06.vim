function! DefineFuncs()
  let One = lambda('let a = 111 | return a')
  let Two = lambda('return exists("a") ? a : "no"')
  return [One, Two]
endfunction

silent! unlet F
let F = DefineFuncs()

" This will print 'no'
echo F[1]()

" This will print 111
echo F[0]()

" This will print 111
echo F[1]()
