function! NewCounter()
  let c = 0
  return lambda('let c += 1 | return c')
endfunction

let g:C = NewCounter()
call garbagecollect()
echo C() | " 1
echo C() | " 2
echo C() | " 3
