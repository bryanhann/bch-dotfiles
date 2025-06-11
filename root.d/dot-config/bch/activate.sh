#!/usr/bin/env bash

[ -f ~/DEBUG ] && echo "[:dbg:] ++[$BASH_SOURCE]"
source $(dirname $BASH_SOURCE)/init/fn.sh
source $(dirname $BASH_SOURCE)/vendor/bash_colors.sh
::lbin:: $(dirname $BASH_SOURCE)/lbin
source $(dirname $BASH_SOURCE)/init/init.sh
[ -f ~/DEBUG ] && echo "[:dbg:] --[$BASH_SOURCE]"
