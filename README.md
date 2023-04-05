## Building qemu screamer on Ubuntu 22.04

How to build the qemu screamer branch on Ubuntu 22.04, as of 2023-05-04

### 1. Install all required packages

```sh
./install-packages.sh
```

### 2. Check out the source repository

```sh
git clone -b screamer https://github.com/mcayland/qemu qemu-screamer
```

### 3. Configure

This will only build the PPC part of the emulator and support only pulse audio. 

```sh
cd qemu-screamer
./configure --target-list="ppc-softmmu" --enable-gtk --enable-sdl --audio-drv-list="pa" --enable-vde
```

### 4. Compile

Compilation will use all available processor cores to be quick.

```sh
make -j $(nproc)
```

Optional: remove debugging symbols from the resulting binary to save some disk space.

```sh
strip build/qemu-system-ppc
```

## Your new executable...

...can be found in `qemu-screamer/build/qemu-system-ppc`