# aosp-vim
Syntax highlighting for AOSP specific files

These files add syntax highlighting for `*.hal` and `*.bp` files.
`*.bp` files are really just json files, so we simply use javascript highlighting for those.

The `*.hal` implementation is incomplete, but better than using C or none at all.
The HIDL grammar is documented on the AOSP site.

https://source.android.com/devices/architecture/hidl/#grammar

## Installation

Copy the contents of each directory into the corresponding directory under `~/.vim/`.
