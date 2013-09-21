divs=: 3 : '/:~ (,y&%) }. (#~(=>.)) (]%[:i.(>:@>.@%:)) y'
NB. Sum of the proper divisors for every number < 1e4.
NB. Also, set to 0 if >1e4 (otherwise an index error is thrown on the next
NB. line).
d=:0 (I. 1e4< v) } v=:(-~+/@divs)"0 i.1e4
echo +/ (-.(#~(={&d)"0)) I. (=({&d@{&d))"0 i.1e4
exit''
