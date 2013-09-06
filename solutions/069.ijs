NB. Unfortunately this one takes quite a while, ~4s on my machine
NB. It can, however, be solved with pen and paper after making a couple of
NB. observations.
NB.
NB. If n has factor 2, every multiple of 2 will not be relatively prime to n,
NB. if n has factor 3, every multiple of 3 will not be relatively prime to n,
NB. ... &c.
NB. So, for n / phi(n) to be at a maximum, phi(n) has to be minimum, hence:
NB. the maximum occurs at: P# = 2 * 3 * 5 * ... * p_n, with P# being the
NB. closest value to 1e6.

NB. ============= Old Way =============
NB. echo (i.>./) (%5&p:) i.1e6+1

NB. ============= New Way =============
echo */ p: i.7
exit''
