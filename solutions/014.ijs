NB. So yeah, this cnv is taken from J Essays as well... (like other 2
NB. problems). I promise that as soon as I have time I'll rewrite it in my
NB. style.
collatzv=: 3 : '<. (2|y)} 0 1 + 0.5 3 */y'

cnv=: 3 : 0
 f=. 2^m=. i. <.@(2&^.)&.<: y
 m=. >:m
 C=. 0 ,~ m f} y{._1
 j=.i=. 3 + i.@<.&.-: y-2
 while. #i do.
  j=. collatzv j
  b=. 0<(j<.y){C
  p=. , f */  b#i
  q=. , m +/ (b#j){C
  m=. >:m
  i=. (-.b)#i
  j=. (-.b)#j
  b=. y>p
  C=. (b#q) (b#p)}C
 end.
 }:C
)

echo {. (\:~i.@#) cnv 1e6
exit''
