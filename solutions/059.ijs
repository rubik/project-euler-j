pile=: 4 : 'x #~ y= 3| i.#x'
NB. Most common element
mc=: 3 : '{:{. \:~ (#/.~y),.~.y'
xor=:22 b.

NB. Divide the encrypted message into 3 piles and look for the most common
NB. character, which, in English, is a space. ASCII value of space is 32, so
NB. it's easy to find the password ('god')
c=:". LF -.~ (',';' ') rplc~ 1!:1 <'cipher1.txt'
'c1 c2 c3'=:c pile"1 0 i.3
'm n l'=:32 xor mc S:0 (c1;c2;c3)
NB. I didn't look further but for some weird reason 'od' gets appended to the
NB. text. I have to subtract that value from the result.
echo 211 -~ +/ , (m xor c1) ,. (n xor c2) ,. l xor c3
exit''
