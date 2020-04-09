#!/bin/sh
CC=${CC:-cc}
command -v $CC >/dev/null || CC=gcc
$CC -std=c89 -pedantic -Wall -Wextra -O3 -I inc/ -o fe src/fe.c src/main.c
