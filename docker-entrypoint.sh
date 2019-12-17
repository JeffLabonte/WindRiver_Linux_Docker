#!/bin/bash

if [ ! -d /home/yocto/wrlinux-x ]
then
    git clone -b $GIT_BRANCH $GIT_REPO
fi

/bin/bash
