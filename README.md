# Compile and install Gretl on a Raspberry Pi

I successfully compiled and ran Gretl (v2021a) on a Raspi 3b+. I am pretty sure it also runs ok on a Raspi 4.

## Install required packages and clone Gretl repo

Execute ```install_required_packages.sh```:
```bash
sudo sh install_required_packages.sh
```
This script installs all packages required for compilation, and clones the gretl repository to the local folder in ```~/git/gretl-git```.


## Compile gretl
Execute this script to compile Gretl
```bash
sh compile-gretl_git.sh
```

Afterwards you should be able to start the gretl GUI by ```gretl``` or the gretl CLI by ```gretlcli```.



## Change swappiness

Open
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


