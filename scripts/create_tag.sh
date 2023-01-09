#!/bin/bash

set -e

cDate=`date +%Y.%m.%d.%H.%M`



TAG=$RELEASE"_"$cDate
if [ $tag == 'dev' || $tag == 'main' || $tag == 'vNext' ]; then

    echo "****************************************************"
    echo "data.stack:common :: Default Tag Found, Creating new TAG :: $TAG"
    echo "****************************************************"

    echo $TAG > CURRENT_COMMON

else
    echo "****************************************************"
    echo "data.stack:common :: User's Tag Found :: $tag"
    echo "****************************************************"

    echo $tag > CURRENT_COMMON
fi