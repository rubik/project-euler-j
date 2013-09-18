NB. Sign of the origin with respect to two vertices
sign=: 3 : 0
  'x2 y2 x3 y3'=.y
  ((-x3)*(y2-y3)) - (x2-x3)*-y3
)

NB. Check if triangle contains the origin
co=: 3 : 0
  'x1 y1 x2 y2 x3 y3'=.y
  b1=.0>sign x1,y1,x2,y2
  b2=.0>sign x2,y2,x3,y3
  b3=.0>sign x3,y3,x1,y1
  (b1=b2) *. (b2=b3)
)

echo +/(co"1) 1000 6 $ ". ('-';'_';',';' ';LF;' ')rplc~ 1!:1<'triangles.txt'
exit''
