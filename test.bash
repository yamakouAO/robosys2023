#!/bin/bash
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

[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

out=$(echo | ./plus )

[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

out=$(seq -5 | ./plus )

[ "${out}" = "" ] || ng "${LINENO}"

[ "$ret" = 0 ] && echo OK
exit $ret



