#!/bin/sh

echo -n "Generating lists...\n"
if python2 generators/listgen.py ; then
    echo "\rOK.        \n"
fi

echo -n "Generating image...\n"
if python2 generators/figure_1.py ; then
    echo "\rOK.        \n"
fi

