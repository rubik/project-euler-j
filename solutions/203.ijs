NB. At first I wrote a verb to compute the Pascal's triangle, which is shown
NB. here:
nr=: 3 : '2 +/\ (0, y, 0)'
pa=: 3 : 'nr^:([:y&>1&{)^:a: (1 1)'
NB. nr computes the next row based on the argument (which is the previous row).
NB. pa computes y rows.
NB. But then I realized that I could just used binomial coefficients, since
NB. numbers were so small. So I used !/~ i.51 which produces a table
NB. correspoding to a rotated Pascal's triangle.

sqf=: -.@(0&e.)@~:@q:
echo +/ (#~sqf) -.&0 ~. , !/~ i.51
exit''
