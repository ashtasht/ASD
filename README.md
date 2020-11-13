# ASD

Amit's Software Distrubution -- an experimental operating system for learning
purposes.

## Building instructions

Here's a list of software that is required for building ASD:
- A GNU/Linux installation (similar things should work but weren't tested; ASD
will hopefully be self-hosted in the future)
- GNU/Make
- Zig
- NASM
- Optionally GRUB

First of all, clone this repository and pull all of the Git submodules.
Now simply `source env.sh` and then run `./build.sh`, this will compile all the
submodules and install them in $SYSROOT (that was defined in `env.sh`).
An i386 multiboot v1 compitable binary will be built by default (as there are no
other supported architectures right now).	A simple GRUB configuration will be
included by default (this will be removed in the future).
If you want to install ASD on your system, simply copy everything under
`sysroot/` to a partition in your disk, install a bootloader (e.g. GRUB) and
configure it to boot ASD.
If you want to create a simple bootable ISO file with GRUB (for testing
purposes) then execute `./create_iso.sh`.
