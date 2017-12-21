# aosp-vim
Syntax highlighting for AOSP specific files

These files add syntax highlighting for `*.hal`, `*.bp`, and `*.rc` files.
`*.bp` files are really just json files, so we simply use javascript highlighting for those.

The `*.hal` implementation is incomplete, but better than using C or none at all.
The HIDL grammar is documented on the AOSP site.

https://source.android.com/devices/architecture/hidl/#grammar

The `*.rc` implementation is reasonably complete, but could be smarter about opening blocks for services and triggers 
instead of relying solely on matching keywords.

Documenation for most of the keywords and syntax can be found in the [Init.rc README](https://android.googlesource.com/platform/system/core/+/master/init/README.md).

## Installation

Symlink the contents of each directory into the corresponding directory under `~/.vim/`.

```bash
ln -s /path/to/repo/ftdetect/hal.vim ~/.vim/ftdetect/hal.vim
ln -s /path/to/repo/ftdetect/bp.vim ~/.vim/ftdetect/bp.vim
ln -s /path/to/repo/ftdetect/rc.vim ~/.vim/ftdetect/rc.vim

ln -s /path/to/repo/syntax/hal.vim ~/.vim/syntax/hal.vim
ln -s /path/to/repo/syntax/rc.vim ~/.vim/syntax/rc.vim
```
