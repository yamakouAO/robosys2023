#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Ko yamaguchi
# SPDX_License-Identifier: BSD-3-Clause

ng () {
	echo ${1}
	ret=1
}

ret=0

out=$(seq 5 | ./plus)


[ "${out}" = 3.0 ] || ng "1から５の平均が3になってない"

out=$(echo あ | ./plus )

[ "$?" = 1 ] || ng "1"
[ "${out}" = "" ] || ng "2"

out=$(echo | ./plus )

[ "$?" = 1 ] || ng "3"
[ "${out}" = "" ] || ng "4"

out=$(seq -5 | ./plus )

[ "$?" = 1 ] || ng "1"
[ "${out}" = "" ] || ng "2"

[ "$ret" = 0 ] && echo OK
exit $ret



