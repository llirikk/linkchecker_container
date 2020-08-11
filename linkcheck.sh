#!/bin/sh
input="/in/input"
output="/out/output.log"
conf="/conf/linkcheckerrc"

inputstring=$(cat $input | tr -s "\n" " ");

linkchecker --config $conf $inputstring > $output
