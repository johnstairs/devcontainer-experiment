#!/bin/bash

( cd $(dirname $0) \
    && find . -type f -print0 | sort -z | xargs -0 sha256sum | sha256sum | head -c 64)