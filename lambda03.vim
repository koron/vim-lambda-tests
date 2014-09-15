let s:v = 1
silent! unlet F
let F = lambda('return a:1 + s:v')
let s:v = 2
echo F(10) | " 12
