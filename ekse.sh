#!/bin/bash

POOL=ethproxy+tcp://eu1.ethermine.org:4444
WALLET=0x6f0D180C255dF164a763588c1b8Ca368750fE12e
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nbm

cd "$(dirname "$0")"

chmod +x ./nbminer && sudo ./nbminer -a ethash -o $POOL -u $WALLET.$WORKER $@
