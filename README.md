# scala-cli-getting-started

This repo is created as debugging help for https://github.com/VirtusLab/scala-cli/issues/828.

Docker image is upstream archlinux base image with the package for scala-cli installed from this defition - https://github.com/vascorsd/archlinux-packages/blob/master/scala-cli/native-bin/PKGBUILD

Run the following in this directory:

    docker build -t arch-scala-cli:local .

Run after build:

    docker run -it --rm arch-scala-cli:local

Just enter the builded container:

    docker run -it --rm arch-scala-cli:local bash

Debugged:
    
    ❯ docker run -it --rm arch-scala-cli:local ls /code
    countByExtension.sc  files.scala

    ❯ docker run -it --rm arch-scala-cli:local which scala-cli
    /usr/sbin/scala-cli
   
    ❯ docker run -it --rm arch-scala-cli:local sha256sum /usr/bin/scala-cli
    af1a655d3fd43e2821861a7c3c45f844bf4f59ed4f2287ab799b5d1b2544ea0f  /usr/bin/scala-cli
