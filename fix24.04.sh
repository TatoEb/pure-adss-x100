#!/bin/bash
if grep -q "Ubuntu 24.04" /etc/os-release; then
    cd /etc/apt/sources.list.d && sudo sed -i 's/noble/jammy/g' ookla_speedtest-cli.list && cd ~
fi