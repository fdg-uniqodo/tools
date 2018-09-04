#!/bin/bash

if ! ps aux | grep 'ssh -NfR 9000:localhost:9000 uniqodo-dev' | grep -v grep; then
    ssh -NfR 9000:localhost:9000 uniqodo-dev
fi

if ! ps aux | grep 'ssh -NfL 3306:localhost:3306 uniqodo-dev' | grep -v grep; then
    ssh -NfL 3306:localhost:3306 uniqodo-dev
fi
