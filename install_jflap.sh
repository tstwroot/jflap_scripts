#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo 'Please execute this script with root privileges.'
    exit 1
fi

echo 'Creating /opt/JFLAP'
mkdir /opt/JFLAP
echo 'Download JFLAP.'
curl https://www.jflap.org/jflaptmp/july27-18/JFLAP7.1.jar --output /opt/JFLAP/jflap.jar
echo 'Creating jflap run script.'
touch /opt/JFLAP/run_jflap.sh
chmod +x /opt/JFLAP/run_jflap.sh
echo 'java -jar /opt/JFLAP/jflap.jar "$@"' > /opt/JFLAP/run_jflap.sh
ln -s /opt/JFLAP/run_jflap.sh /usr/bin/jflap
echo 'Done! :)'
exit 0
