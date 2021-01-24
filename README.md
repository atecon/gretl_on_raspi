# Compile and install Gretl on a Raspberry Pi

I successfully compiled and ran Gretl (v2021a) on a Raspi 3b+. I am pretty sure it also runs ok on a Raspi 4.

## Install required packages and clone Gretl repo

Execute ```install_required_packages.sh```:
```
sudo sh install_required_packages.sh
```
This script installs all packages required for compilation, and clones the gretl repository to the local folder in ```~/git/gretl-git```.


## Compile gretl
Execute this script to compile Gretl
```
sh compile-gretl_git.sh
```

Afterwards you should be able to start the gretl GUI by ```gretl``` or the gretl CLI by ```gretlcli```.




