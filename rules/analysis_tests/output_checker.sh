#!/bin/bash
INPUT=%TARGET%
echo $INPUT

if [[  $INPUT  == *.ipa ]]; then
    echo IPA
    unzip -q $INPUT
    pushd Payload
else
   exit 1
   FIND="$(dirname $INPUT)"
   pushd $(readlink $INPUT)
fi

find .
popd
exit 1
