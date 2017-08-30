[`au`](https://github.com/sdrausty/au/blob/master/au) +enter/return at the command prompt 💪🙂 in Termux will update and backup your [Termux](https://termux.com/) installation in three keystrokes! 

You can use [`au`](https://github.com/sdrausty/au/blob/master/au) 📲 to backup you installation files in [Termux,](https://termux.com/) i.e. `*.deb` files available for reinstall when need be.. 

Should you find your [Termux](https://termux.com/) operating system unstable for any reason after updating, you can try to use `dpkg --purge pkg_name` and then `dpkg --install pkg_name` from `/sdcard/debs` to downgrade packages to a previous version of a package in the hope of regaining system stability in [Termux.](https://termux.com/)

You should use [`au`](https://github.com/sdrausty/au/blob/master/au) from your `$PATH`. To see your `$PATH`, type `$PATH` +enter/return. Then use `mv au destination_directory` to move [`au`](https://github.com/sdrausty/au/blob/master/au) to your `$PATH`. [`au`](https://github.com/sdrausty/au/blob/master/au) +enter/return will update and backup your [Termux](https://termux.com/) in three keystrokes!

Every time you want to `apt update && apt upgrade` or `pkg up`, you shall also be backing up your former installation debs to `/sdcard/debs` by using [`au`.](https://github.com/sdrausty/au/blob/master/au) Ideally, you should change `/sdcard/debs` to an external mirco SD card destination in lines 9 and 11 of [au](https://github.com/sdrausty/au/blob/master/au) to save space on device!

If you find your system unstable, you can use `dpkg --purge pkg_name` and then `dpkg --install pkg_name` from `/sdcard/debs` to downgrade packages to a previous version of a package in the hope of regaining package stability. 
