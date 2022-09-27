README
======

## Clone

    $ git clone https://github.com/zhoujd/mdk-edge --recursive

## Deploy DEK single node with tt

    $ . env.sh
    $ tt
    Use: tt single [argv]
    $ tt single
    Usage: single {deps|update|verify|deploy}
    $ tt single deps
    $ tt single update
    $ tt single verify
    $ tt single deploy

## Modify DEK single node deployment in tt

    $ vim case/single/env.sh
    $ vim tt-core/single
    $ tt
