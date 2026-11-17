#!/usr/bin/env bash
# CSE 4502 OS Lab: install and check the tools on Ubuntu / Debian / Linux Mint.
# Run from the CSE4502_OS_Lab directory:   bash setup.sh
set -e
cd "$(dirname "$0")"
. ./mcertikos/scripts/common_check.sh

echo "Installing the tools (you may be asked for your password)..."
sudo apt-get update
sudo apt-get install -y build-essential gcc-multilib gdb make perl python3 \
	qemu-system-x86 git

if [ -e /dev/kvm ] && ! id -nG | grep -qw kvm; then
	sudo usermod -aG kvm "$USER" && \
		echo "Added you to the kvm group: log out and log in again to use KVM."
fi

CC_CHECK=gcc
check_tools
