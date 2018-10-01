#!/bin/bash

if ! ps aux | grep 'ssh -Nf tun.xdebug' | grep -v grep; then
    ssh -Nf tun.xdebug
fi

if ! ps aux | grep 'ssh -Nf tun.mysql' | grep -v grep; then
    ssh -Nf tun.mysql
fi
