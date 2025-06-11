#!/usr/bin/env bash

[ -f ~/DEBUG ] && echo "[:dbg:] ++[$BASH_SOURCE]"
export BCH_000_ROOT=$(dirname $BASH_SOURCE)
export BCH_000_VEND=$(dirname $BASH_SOURCE)/vendor
source $BCH_000_ROOT/init/fn.sh
:lbin: $BCH_000_ROOT/lbin
source $BCH_000_ROOT/init/init.sh
[ -f ~/DEBUG ] && echo "[:dbg:] --[$BASH_SOURCE]"
