NB. fib is from J's wiki

fib=: {. @ (2&x:) @ ((+%)/) @ (0 , $&1x)
echo +/ (#~-.@(2&|)) fib"0 i.34
exit''
