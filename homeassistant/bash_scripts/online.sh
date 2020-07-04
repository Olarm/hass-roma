#!/bin/bash

if [[ $(fping -C1 -q google.com pool.ntp.org bbc.co.uk 8.8.8.8 8.8.4.4 2>&1 | grep -v '-' | wc -l) -gt 0 ]]; then
        echo online
else
        echo offline
fi
