#!/bin/sh
ANDROID_ROOT="/root/Projects/android" \
TOOLCHAIN_VER="4.6"  \
PATH=$ANDROID_ROOT/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6/bin:$PATH \
CPPFLAGS="-I $ANDROID_ROOT/system/core/include -I$ANDROID_ROOT/bionic/libc/include -I$ANDROID_ROOT/bionic/libc/arch-arm/include -I$ANDROID_ROOT/external/kernel-headers/original -I$ANDROID_ROOT/bionic/libc/kernel/arch-arm -L$ANDROID_ROOT/out/target/product/generic/obj/lib -L$ANDROID_ROOT/out/target/product/generic/system/lib -lc -ldl -lm -lssl " \
CFLAGS="-fno-exceptions -Wno-multichar -mthumb -mthumb-interwork -nostdlib -L$ANDROID_ROOT/out/target/product/generic/obj/lib -L$ANDROID_ROOT/out/target/product/generic/system/lib -I$ANDROID_ROOT/external/openssl/include -lc -ldl -lm -lssl"  \
./configure CC=arm-linux-androideabi-gcc --host=arm-linux --disable-tftp --disable-sspi --disable-ipv6 --disable-ldaps --disable-ldap --disable-telnet --disable-pop3 --without-ssl --disable-imap --disable-smtp --disable-pop3 --disable-ares --without-ca-bundle --disable-warnings --disable-manual --without-nss --enable-shared --without-zlib --without-random

#./configure CC=arm-linux-androideabi-gcc --host=arm-linux --disable-tftp --disable-sspi --disable-ipv6 --disable-ldaps --disable-ldap --disable-telnet --disable-pop3 --with-ssl=/root/Projects/android/external/openssl --disable-imap --disable-smtp --disable-pop3 --disable-rtsp --disable-ares --without-ca-bundle --disable-warnings --disable-manual --without-nss --enable-shared --with-zlib=/root/Projects/android/external/zlib --without-random

