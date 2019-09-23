# [au](https://github.com/WAE/au)

#### -r--r--r-- [au](https://raw.githubusercontent.com/WAE/au/master/au)
#### -rwxrwx--- [au](https://wae.github.io/au/au)

Tapping [`au`](https://raw.githubusercontent.com/sdrausty/au/master/au) at the command prompt 💪 in [Termux 🙂 ](https://termux.com/) will update and backup your [Termux](https://termux.com/) installation in three keystrokes! You can use [`au`](https://github.com/sdrausty/au/blob/master/au) 📲 to backup your installation files in [Termux,](https://termux.com/) i.e. `*.deb` files available for reinstallation, if the need should arise on your Android or Chrome device. 

Should you find your [Termux](https://termux.com/) operating system unstable for any reason after updating, you can use `dpkg --purge pkg_name`, and then `dpkg --install pkg_name` from `/sdcard/debs` to downgrade packages to a previous version of a package in the hope of regaining package stability in [Termux.](https://termux.com/)

You should use the script [`au`](https://github.com/sdrausty/au/blob/master/au) from your `$PATH`. To see your `$PATH`, type `$PATH` +enter/return. Then use `mv au destination_directory` to move [`au`](https://github.com/sdrausty/au/blob/master/au) to your `$PATH`. [`au`](https://github.com/sdrausty/au/blob/master/au) will update and backup your [Termux](https://termux.com/) in three keystrokes!

Every time you want to `apt update && apt upgrade` or `pkg up`, you shall also be backing up your former installation debs to `/sdcard/debs` by using [`au`.](https://github.com/sdrausty/au/blob/master/au) Ideally, you should change `/sdcard/debs` to an external mirco SD card destination in lines 9 and 11 of [au](https://github.com/sdrausty/au/blob/master/au) to save space on device!

If you find your system unstable, you can use `dpkg --purge pkg_name` and then `dpkg --install pkg_name` from `/sdcard/debs` to downgrade packages to a previous version of a package in the hope of regaining package stability. Enjoy utilizing [Termux](https://termux.com/) 💪🙂 on device! [Termux](https://termux.com/) is completely amazing on a smartphone and/or a tablet in you pocket! 

Important: Please use `apt -o APT::Keep-Downloaded-Packages="true" install package_name(s)` to populate your backup directory in conjunction with `au` to ensure that you can enjoy a full backup of `*.deb` files on device. 
