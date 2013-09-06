NB. These two functions are taken from J's Wiki
dfr=: 3 : 0 :. rfd
 i=. 'IVXLCDM' i. y
 d=. i{1 5 10 50 100 500 1000
 +/d*_1^i<}.i,_1
)

r100 =. <;._1 '  C CC CCC CD D DC DCC DCCC CM'
r10  =. <;._1 '  X XX XXX XL L LX LXX LXXX XC'
r1   =. <;._1 '  I II III IV V VI VII VIII IX'
R1000=: , r100 ,&.>/ r10 ,&.>/ r1

rfd=: 3 : 0
 ('M'$~<.y%1000),R1000{::~1000|y
)

data=: 1!:1 <'roman.txt'
nums=: LF cut data
echo +/ >(#-([:#(]&.dfr))) each nums
exit''
