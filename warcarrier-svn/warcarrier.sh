#!/bin/bash

export PERL5LIB="/opt/warcarrier/lib/"

(pushd /opt/warcarrier
case "$0" in
   warcarrier,wcclean,wcd) ./"$0";;
esac)
