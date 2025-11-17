#!/bin/bash

[ -z "$1" ] && exit
echo "Compiling and watching $1.typ ..."

prequery "$1".typ
test -e "$1".pdf || typst compile "$1".typ
xdg-open "$1".pdf &
typst watch "$1".typ

