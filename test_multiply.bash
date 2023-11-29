#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ko Yamaguchi
# SPDX-License-Identifier: BSD-3-Cluause

ng () {
	echo ${1}
	rat=1
}


rat=0

out=$(seq 5 | ./multiply)

[ "${out}" = 120 ] || ng "seq 5 が違います"

out=$(echo あ | ./multiply )

[ "$?" = 1 ] || ng "1"
[ "${out}" = "" ] || ng "2"

out=$(echo | ./multiply )

[ "$?" = 1 ] || ng "3"
[ "${out}" = "" ] || ng "4"

[ "$rat" = 0 ] && echo OK
exit $rat

