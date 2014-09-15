let X = lambda("
\ let x = 1 \n
\ return x + a:1")
echo X(1) | " 2
echo X(2) | " 3
