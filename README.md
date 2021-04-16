<link rel="prerender" href="https://sdrausty.github.io/au/">

# [au](https://github.com/SDRausty/au/)

#### -r--r--r-- [au](https://raw.githubusercontent.com/SDRausty/au/master/au)
#### -rwxrwx--- [au](https://wae.github.io/au/au)


You can use [`au`](https://raw.githubusercontent.com/SDRausty/au/master/au) 📲 to backup you installation files in [Termux,](https://github.com/termux/) i.e. debs. If you find your system unstable after updating, you can try to use `dpkg --purge pkg_name` and then `dpkg --install pkg_name` from `/sdcard/debs` to downgrade packages to a previous version of a package in the hope of regaining system stability in [Termux.](https://github.com/termux/)

You should use [`au`](https://raw.githubusercontent.com/SDRausty/au/master/au) from your `$PATH`. To see your `$PATH`, type `$PATH` +enter/return. Then use `mv au destination_directory` to move `au` to your `$PATH`. `au` +enter/return will update and backup your [Termux Packages](https://github.com/termux/termux-packages) in three keystrokes!

Every time you want to `apt update && apt upgrade` or `pkg up`, you will also be backing up your former installation debs to `/storage/emulated/0/Android/data/com.termux/txdebs` by using `au`. Ideally, you should change `/storage/emulated/0/Android/data/com.termux/txdebs` to an external mirco SD card destination in lines 9 and 11 of au to save space on device.

If you find your system unstable, you can use `dpkg --purge pkg_name` and then `dpkg --install pkg_name` from `/storage/emulated/0/Android/data/com.termux/txdebs` to downgrade packages to a previous version of a package in the hope of regaining package stability. 
<!--au README.md EOF-->
