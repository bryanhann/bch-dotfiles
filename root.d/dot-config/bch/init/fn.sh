#!/usr/bin/env bash

source $BCH_000_VEND/bash_colors.sh

:note: () { clr_reverse "[:note:] $@ "; }
:warn: () { clr_reverse "[:warn:] $@ "; }

#------------------------------------------------

:dbg:  () { [ -f ~/DEBUG ] && echo [:dbg:] $@; }

:lbin: () {
    mkdir -p ~/.local/bin
    local real
    local link
    for real in $(ls $1/bch.*); do
        link=~/.local/bin/$(basename $real)
        [   -f ${link} ] && :dbg: [:lbin:] found $link
        [   -f ${link} ] && continue
        [ ! -f ${link} ] && :dbg: [:lbin:] create $link
        [ ! -f ${link} ] && ln -s $real $link
    done
}
