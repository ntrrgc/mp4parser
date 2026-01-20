#!/bin/bash
set +x
pwd
which rg
echo stdout is logged
echo stderr is logged >&2

mkdir /tmp/testing_rg
pushd /tmp/testing_rg
echo miau > file
strace --follow-forks -e '%file' rg miau </dev/null
popd

rg trun
rg -tpy '^\t* +' </dev/null; echo $?;
hexdump -C test.py
exit 123
