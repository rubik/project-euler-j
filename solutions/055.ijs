r=:|.&.":

NB. Pretty difficult to translate this one to tacit style. I'll have to ponder
NB. it a bit.
l=: 3 : 0
  i=.0
  while. i < 50 do.
    y=. x: (+r) y
    if. (=r) y do. 0 return. end.
    i=.>:i
  end.
  1
)

echo +/ l"0 i.1e4
exit''
