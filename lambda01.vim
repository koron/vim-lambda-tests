echo map([1, 2, 3], lambda('return a:1 + 1'))       | " [2,3,4]
echo sort([3,7,2,1,4], lambda('return a:1 - a:2'))  | " [1,2,3,4,7]
let s:x = 2
echo filter([1, 2, 3], lambda('return a:1 >= s:x')) | " [2,3]
