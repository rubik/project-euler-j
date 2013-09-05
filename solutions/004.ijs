NB. A is_pal function could be written as follows:
NB. is_pal=:(-:|.)@":"0
NB. */ makes a multiplication table, ~. takes the nub of it (after , ravelled)

echo >./(((-:|.)@":)"0#])~.,n*/n=:100+i.900
exit''
