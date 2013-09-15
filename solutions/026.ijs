NB. Period length is the smallest i such that 10^i - 1 = 0 (mod y)
cp=: 3 : 0
  i=.>.10^.y
  while. y|<:10x^i do. i=.>:i end.
  i
)

n=: 2 5 -.~ i.&.(p:^:_1) 1000
echo {. (\:cp"0) n
exit''
