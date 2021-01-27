#!/bin/bash

POOL=ethproxy+tcp://eu1.ethermine.org:4444
WALLET=0x7Dae02729373299852F31464A257A677ae48CE90
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nbm

cd "$(dirname "$0")"

chmod +x ./nbminer && sudo ./nbminer -a ethash -o $POOL -u $WALLET.$WORKER $@
