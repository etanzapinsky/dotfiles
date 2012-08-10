#!/bin/bash
if [ -z $1 ]; then
    echo Usage: $0 \<file name\>
    exit -1
fi

LINTARGS=
if [ $TERM == "dumb" ]; then
    LINTARGS="$LINTARGS --output-format=parseable"
fi
if [ ! -e $HOME/.pylintrc ]; then
    RCFILE="`dirname $0`/pylintrc"
    LINTARGS="$LINTARGS --rcfile $RCFILE"
fi

#pylint $LINTARGS $1
pep8 --repeat --ignore=E501 $1
