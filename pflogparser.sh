#!/bin/bash
tail -n 1 /var/log/pffirewall.log | egrep 'block in' | egrep -v '443 >|80 >|255.255.255.255' | awk -F"." '{print $13}'
echo "---"
echo "Last 40 entries"
tail -n 40 /var/log/pffirewall.log | egrep 'block in' | egrep -v '443 >|80 >|255.255.255.255'
