NB. Table of sums (prime plus twice a square)
t=:~., (+:*:>:i.1e3) +/ (p=:(i.&.(p:^:_1)) 1e4)
NB. The rightmost part are odd composites up to 1e4
echo {. (#~-.@:(e.&t)"0) (2*i.5e3) -.~ (2+i.1e4) -. p
exit''
