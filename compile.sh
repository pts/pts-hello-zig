#! /bin/bash --
# by pts@fazekas.hu at Thu Dec  6 14:05:33 CET 2018

set -ex

./zig-linux-x86_64-0.3.0/zig build-exe --release-small hello.zig && sstrip.static hello
./zig-linux-x86_64-0.3.0/zig build-exe --release-small hello2.zig && sstrip.static hello2
xstatic gcc -s -Os -W -Wall -Wextra -o helloc helloc.c && sstrip.static helloc
ls -l hello hello2 helloc
# -rwxr-xr-x 1 pts pts 8800 Dec  6 14:06 hello
# -rwxr-xr-x 1 pts pts 8208 Dec  6 14:06 hello2
# -rwxr-xr-x 1 pts pts 5656 Dec  6 14:06 helloc

: compile.sh OK.
