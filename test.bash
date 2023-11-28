#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ko yamaguchi
# SPDX_License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	ret=1
}

ret=0

out=$(seq 5 | ./plus)

[ "${out}" = 15 ] || ng "$LINENO"

[ "$ret" = 0 ] && echo OK
exit $ret



