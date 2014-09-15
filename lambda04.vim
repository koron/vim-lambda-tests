function! s:update_and_return(arr)
  let a:arr[1] = 5
  return a:arr
endfunction

function! s:foo(arr)
  return lambda('return s:update_and_return(a:arr)')
endfunction

let arr = [3,2,1]
echo s:foo(arr)() | " [3,5,1]
