# Code - OSS Debian packaging

```console
$ uscan -v --destdir .
$ tar xf code-oss-*.tar.gz
$ cd code-oss-*
$ cp -r ../debian .
$ sbuild -d sid --extra-package /path/to/electron.deb
```
