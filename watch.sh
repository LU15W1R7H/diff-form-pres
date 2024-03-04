#!/usr/bin/env sh

typst watch --root . src/main.typ out/main.pdf &
xdg-open out/main.pdf &
wait
