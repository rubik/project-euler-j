lagrange=: ] +/ .* [ (] % p.~) 1 p.@;~&1\. [

u=:1 _1 1 _1 1 _1 1 _1 1 _1 1
d=:u p. >:i.11x

fit=: 3 : 0
  bops=.0
  for_n. >:i.10 do.
    pol=.((>:@i.) lagrange ({.&y)) n
    if. n= +/ y= pol p. >:i.11 do.
      bops=.bops + pol p. >:n
    end.
  end.
  bops
)

echo fit d
exit''
