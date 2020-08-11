#!/bin/sh
input="/in/input"
conf="/conf/linkcheckerrc"

inputstring=$(cat $input | tr -s "\n" " ");

linkchecker --config $conf $inputstring 2>&1
