#!/bin/bash
if grep -q "Ubuntu 24.04" /etc/os-release; then
    echo "Ubuntu 24.04 is detected, a fixing script has been applied" && cd /etc/apt/sources.list.d && sudo sed -i 's/noble/jammy/g' ookla_speedtest-cli.list && cd ~
fi
