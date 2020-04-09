#!/bin/bash
${CC:${cc:gcc}} -std=c89 -pedantic -Wall -Wextra -O3 -I inc/ -o fe src/fe.c src/main.c
