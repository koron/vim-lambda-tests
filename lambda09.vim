function! NewCounter()
  let c = 0
  return lambda('let c += 1 | return c')
endfunction

let g:C = NewCounter()
call garbagecollect()
echo C()
echo C()
echo C()
