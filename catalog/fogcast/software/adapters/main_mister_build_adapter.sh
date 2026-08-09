#!/bin/sh
# Main_MiSTer Stage A0 adapter.
#
# This adapter is intentionally explicit: Overlord's native software actions
# describe/copy source inputs but do not compile or link this Linux program.
# The caller must provide the pinned Main_MiSTer checkout, the reviewed ARM
# toolchain, and the reviewed container. No host libraries or network access
# are allowed by the Stage A0 capture contract.
set -eu

usage() {
    printf '%s\n' 'usage: main_mister_build_adapter.sh SOURCE_DIR TOOLCHAIN_ROOT' >&2
    exit 2
}

[ "$#" -eq 2 ] || usage
source_dir=$1
toolchain_root=$2

case "$source_dir" in
    /*) ;;
    *) printf '%s\n' 'source directory must be absolute' >&2; exit 2 ;;
esac
case "$toolchain_root" in
    /*) ;;
    *) printf '%s\n' 'toolchain root must be absolute' >&2; exit 2 ;;
esac

test -d "$source_dir"
test -x "$toolchain_root/bin/arm-none-linux-gnueabihf-gcc"
test -x "$toolchain_root/bin/arm-none-linux-gnueabihf-ld"
test -x "$toolchain_root/bin/arm-none-linux-gnueabihf-strip"

export LC_ALL=C
export TZ=UTC
export SOURCE_DATE_EPOCH=1786215171
export PATH="$toolchain_root/bin:$PATH"
export MAKEFLAGS=

cd "$source_dir"
printf 'STAGE_A0_JOB_COUNT=%s\n' "$(nproc)"
test "$(nproc)" = 1
arm-none-linux-gnueabihf-gcc --version | sed -n '1p'
make clean VDATE=260808 'SHELL=/bin/bash -o pipefail' BUILDDIR=bin
make V=1 VDATE=260808 'SHELL=/bin/bash -o pipefail' BUILDDIR=bin
