# Code - OSS Debian packaging

```console
$ uscan -v --destdir .
$ tar xf code-oss-*.tar.gz
$ cd vscode-*
$ cp -r ../debian .
$ sbuild -d sid --extra-package /path/to/electron.deb
```
