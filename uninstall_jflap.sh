#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo 'Please execute this script with root privileges.'
    exit 1
fi

rm -r /opt/JFLAP
rm /usr/bin/jflap
