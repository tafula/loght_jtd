#!/bin/sh

echo -n "Generating lists...\n"
if python2 listlpl.py ; then
    echo "\rOK.        \n"
fi

echo -n "Generating fig1...\n"
if python2 figlpl.py 1; then
    echo "\rOK.        \n"
fi

echo -n "Generating fig2...\n"
if python2 figlpl.py 2; then
    echo "\rOK.        \n"
fi

echo -n "Generating fig3...\n"
if python2 figlpl.py 3; then
    echo "\rOK.        \n"
fi

