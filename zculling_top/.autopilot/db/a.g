#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ylxiao/ws_201/RISC/ip_development/hls_prj/rendering/zculling_top/.autopilot/db/a.g.bc ${1+"$@"}
