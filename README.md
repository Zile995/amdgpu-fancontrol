# amdgpu-fancontrol

Simple bash script to control AMD Radeon graphics cards fan pwm. **Adjust** temp/pwm values and hysteresis/interval in the script as desired. Other adjustments, such as the correct hwmon path might be required as well.

This script was initially meant as an example. **Please don't just run it naively and keep in mind that I'm not responsible for failures.**

## Installation

* Run the ```install_fancontrol.sh``` script inside the repository folder.
    ```
    sudo ./install_fancontrol.sh
    ```

* Please verify that the fancontrol script is running after system startup or hybernation with ```systemctl status amdgpu-fancontrol```

![Screenshot_20210420_124356](https://user-images.githubusercontent.com/32335484/115383416-19089c00-a1d6-11eb-95ca-5fa5b49a9bd1.png)

* Also don't forget to [append](https://wiki.archlinux.org/index.php/Kernel_parameters#Configuration) ```amdgpu.ppfeaturemask=0xffffffff``` kernel parameter. If you are using GRUB change the /etc/default/grub :

  ```
  GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet amdgpu.ppfeaturemask=0xffffffff"
  ```

* Update the GRUB configuration and reboot:
  ```
  sudo grub-mkconfig -o /boot/grub/grub.cfg 
  ```

## Packages

- Arch Linux (on AUR): https://aur.archlinux.org/packages/amdgpu-fancontrol-git/
