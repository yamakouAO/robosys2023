#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ko Yamaguchi
# SPDX-License-Identifier: BSD-3-Cluause

ng () {
	echo ${1}が違います
	rat=1
}

rat=0

out=$(seq 5 |./multiply)

[ "${out}" = 120 ] || ng "${seq5}"

[ "$rat" = 0 ] && echo OK
exit $rat

