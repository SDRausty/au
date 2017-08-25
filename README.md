# -rwxrwx--- au

You can use `au` 📲 to backup you installation files in [Termux,](https://termux.com/) i.e. debs. If you find your system unstable after updating, you can try to use `dpkg --purge pkg_name` and then `dpkg --install pkg_name` to downgrade packages to a previous version of a package in the hope of regaining system stability in [Termux.](https://termux.com/)

It is recommended you place `au` on your `$PATH`. To see what your `$PATH` is type `$PATH` +enter/return, then use `cp au destination_directory` to copy `au` to your `$PATH`. `au` +enter/return will update and backup your [Termux](https://termux.com/) in three keystrokes!

Every time you want to `apt update && apt upgrade` or `pkg up`, you will also be backing up your former installation debs to `/sdcard/debs` by using `au`. Ideally you should change `/sdcard/debs` to an external mirco SD card destination in `au`. 

If you find your system unstable, you can use `dpkg --purge pkg_name` and then `dpkg --install pkg_name` to downgrade packages to a previous version of a package in the hope of regaining package stability. 
