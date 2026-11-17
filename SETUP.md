# CSE 4502 OS Lab: setup on Ubuntu / Debian / Linux Mint

This archive is for **Ubuntu 22.04 or newer, Debian 12 or newer, or Linux Mint 21 or newer**.
Using Fedora, macOS or Windows? Download the archive for your system instead.

## 1. Unpack the archive

```
mkdir -p ~/os-lab
cd ~/os-lab
tar xzf ~/Downloads/CSE4502_OS_Lab_Winter2025-26_Ubuntu-Debian.tar.gz
cd CSE4502_OS_Lab
```

Keep the path free of spaces (for example `~/os-lab/CSE4502_OS_Lab`).

## 2. Install the tools

```
bash setup.sh
```

The script installs GCC with 32-bit support (`gcc-multilib`), GDB, GNU Make,
Python 3, QEMU and Git, adds you to the `kvm` group, and checks the result.
If it says you were added to the kvm group, log out and log in again.

To install by hand instead:

```
sudo apt update
sudo apt install build-essential gcc-multilib gdb make perl python3 qemu-system-x86 git
```

## 3. Check that everything works

```
cd mcertikos
make LAB=1 TEST=1
```

You should see `LAB 1 RESULT: 0 / 3 test groups passed.` (the tests fail
until you write the Lab 1 code). Exit QEMU with **Ctrl-a**, then **x**.

## Contents

- `mcertikos/`: the project you work on for the whole course
- `CSE4502_Lab_Handout_Book.pdf`: the lab handout (Chapter 2 covers setup;
  Appendix A covers troubleshooting)
