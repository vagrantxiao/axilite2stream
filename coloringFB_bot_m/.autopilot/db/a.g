#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ylxiao/ws_192/F200818_rendering_hls/coloringFB_bot_m/.autopilot/db/a.g.bc ${1+"$@"}
