# amdgpu-fancontrol

Simple bash script to control AMD Radeon graphics cards fan pwm. **Adjust** temp/pwm values and hysteresis/interval in the script as desired. Other adjustments, such as the correct hwmon path might be required as well.

This script was initially meant as an example. **Please don't just run it naively and keep in mind that I'm not responsible for failures.**

## Installation

* Install ```bc``` package:
  * Arch
    ```
    sudo pacman -S bc
    ```
  * Ubuntu
    ```
    sudo apt install bc
    ``` 

* Run the ```install-fancontrol.sh``` script inside the repository folder.
    ```
    sudo ./install-fancontrol.sh
    ```

* Please verify that the fancontrol script is running after system startup or hybernation with ```systemctl status amdgpu-fancontrol```
![Screenshot from 2021-08-20 18-18-03](https://user-images.githubusercontent.com/32335484/130263510-dd0f89e7-f2fd-4320-bc3c-2568014c2409.png)
  
## How to uninstall fancontrol?

* Run the ```uninstall-fancontrol.sh``` script inside the repository folder.
    ```
    sudo ./uninstall-fancontrol.sh
    ```

## Packages

- Arch Linux (on AUR) without config modification: https://aur.archlinux.org/packages/amdgpu-fancontrol-git/

