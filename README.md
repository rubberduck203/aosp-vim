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

### Pathogen

```bash
git clone https://github.com/rubberduck203/aosp-vim.git ~/.vim/bundle/aosp
```
