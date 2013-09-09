NB. An efficient algorithm to compute divisors of a number. It iterates only up
NB. to the square root of n.
div=: 3 : '/:~ (,y&%) }. (#~(=>.)) (]%[:i.(>:@>.@%:)) y'
NB. The encode function transforms an array with repeated values in a
NB. 2-dimensional array:
NB.
NB.   v_i r_i
NB.   v_j r_j
NB.     ..
NB. where v is a value and r an integer specifying how many times that value
NB. was repeated.
enc2=:([:+/=)"_ 0
encode=:|:@(n ,:~ (enc2 (n=. ~.)))
NB. The nt verb computes the number of triples that can make up to that
NB. perimeter
nt=: 3 : '+/ ((>*.>&0@])(-~y&%)) div y'
echo {: {. \:~ encode (#~nt"0) i.1000
exit''
