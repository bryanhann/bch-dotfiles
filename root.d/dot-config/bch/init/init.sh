#!/usr/bin/env bash

source $BCH_000_VEND/bash_colors.sh

for pth in $(ls $(dirname ${BASH_SOURCE[0]})/[0-9]*); do
    . $pth
done


:lbin: $BCH_000_ROOT/lbin
