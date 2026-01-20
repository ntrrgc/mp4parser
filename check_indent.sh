#!/bin/bash
pwd
which rg
rg trun
rg -tpy '^\t* +'; echo $?;
hexdump -C test.py
exit 123
