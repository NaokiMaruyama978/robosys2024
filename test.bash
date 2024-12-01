#!/bin/bash -xv

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

<<<<<<< HEAD
out=$(seq あ | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

["$res" = 0 ] && echo OK
=======
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
>>>>>>> ba79de85a6a5ae3165329f014ca712b3418f97ad

exit $res
