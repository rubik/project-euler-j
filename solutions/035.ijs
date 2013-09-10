NB. This sucks, but I'll improve it soon
rot=: 3 : '(|.&(": y))"0 i. # ": y'
circ=: 3 : '*./ 1 p: ". rot y'
echo +/ circ"0 i.&.(p:^:_1) 1e6
exit''
