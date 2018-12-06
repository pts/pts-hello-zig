pts-hello-zig: small (hello-world) Zig programs and their binary sizes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Byte sizes of statically linked, Linux amd64 or i386 ELF executables:

* 8800 hello
* 8208 hello2
* 5656 helloc
*  200 helloc-xtiny

FYI It's an apples-to-oranges comparison of Zig with C (with `xstatic gcc
helloc.c'), because xstatic gcc and xtiny gcc target i386, and Zig targets
amd64.

__END__
