README
======

## Deploy DEK single node with script

    $ cd script
    $ ./deploy-single
    Usage: deploy-single {deps|update|verify|deploy}
    $ ./deploy-single update
    $ ./deploy-single verify
    $ ./deploy-single deploy

## Deploy DEK single node with stm

    $ . env.sh
    $ stm
    Use: stm single [argv]
    $ stm single
    Usage: single {deps|update|verify|deploy}
    $ stm single update
    $ stm single verify
    $ stm single deploy
