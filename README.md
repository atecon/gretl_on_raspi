# Compile and install Gretl on a Raspberry Pi

I successfully compiled and ran Gretl (v2021a) on a Raspi 3b+. I am pretty sure it also runs ok on a Raspi 4.

## Install required packages
Make sure all necessary packages for compilation are installed. Execute:
```bash
sudo sh install_required_packages.sh
```
This script installs all packages required for compilation

## Clone the gretl repository to the local folder in ```~/git/gretl-git```.
```bash
clone_repo.sh
```

## Compile gretl
Execute this script to compile Gretl
```bash
sh compile-gretl_git.sh
```

Afterwards you should be able to start the gretl GUI by ```gretl``` or the gretl CLI by ```gretlcli```.

Confirm successfull installation:
```bash
gretlcli --version
``` 

## Change swappiness
For improving the performance of your raspi, I also recommend to change the default swappiness (just google for it) settings. Open
```bash
sudo nano /etc/sysctl.conf
```
and append at the end
```bash
vm.swappiness=10
```
The setting will be activated with your next reboot.

For changing it on-the-fly, execute:
```bash
sudo sysctl -w vm.swappiness=10
```
