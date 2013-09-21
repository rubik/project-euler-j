NB. This is a really useful one!
sqrt=: 4 : '<.@%: y*10x^2*x'
f=: 3 : '+/ "."0 ": 100 {. ": 120 sqrt y'
echo +/ f"0 (-.*:) i.100
exit''
