NB. J implementation (yes, first time I am forced to use imperative control
NB. structures and... it sucks. I don't know if I'll be able to convert it to
NB. tacit style... Anyway this is a translation from a Python script I wrote
NB. some time ago. You can find it here:
NB.   https://gist.github.com/rubik/1454917
NB. Prettier uh?

NB. Integer part of a number
int=:>.`<.@.(0&<:)

NB. Continued fraction period. ATTENTION: don't give it a perfect square.
NB. The Python version automatically checks for that, but since I already take
NB. care of it for this problem I skipped that check.
cfp=: 3 : 0
  r=.0
  a0=.<.%: y
  'a b c'=.1, (+:a0), (y-~*:a0)
  delta=.%:4*y
  while. 1 do.
    d=.int (b + delta) % +:c
    'a b c'=.c, ((+:c*d) - b), ((a - b*d) + c * *:d)
    r=.>:r
    if. 1 = |a do. break. end.
  end.
  r
)

echo +/ 2&|@cfp"0 (>:i.9999) -. *: i.100
exit''
