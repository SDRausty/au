<link rel="prerender" href="https://wae.github.io/au/">

# [au repository](https://github.com/WAE/au)
# [au page](https://wae.github.io/au/)


#### -rwxrwx--- [au](https://wae.github.io/au/au)
#### -r--r--r-- [au](https://raw.githubusercontent.com/WAE/au/master/au)


You can use [`au` 📲 ](https://github.com/WAE/au/blob/master/au) to backup you installation files in [Termux](https://github.com/search?q=Termux), i.e. debs. If you find your system unstable after updating, you can try to use `dpkg --purge pkg_name` and then `dpkg --install pkg_name` from `/sdcard/debs` to downgrade packages to a previous version of a package in the hope of regaining system stability in [Termux.](https://github.com/termux)

You should use [`au`](https://github.com/WAE/au/blob/master/au) from your `$PATH`. To see your `$PATH`, type `$PATH` +enter/return. Then use `mv au destination_directory` to move `au` to your `$PATH`. `au` +enter/return will update and backup your [Termux](https://github.com/termux/) in three keystrokes!

Every time you want to `apt update && apt upgrade` or `pkg up`, you shall also be backing up your former installation debs to `/sdcard/debs` by using `au`. Ideally, you should change `/sdcard/debs` to an external mirco SD card destination in lines 9 and 11 of au to save space on device.

If you find your system unstable, you can use `dpkg --purge pkg_name` and then `dpkg --install pkg_name` from `/sdcard/debs` to downgrade packages to a previous version of a package in the hope of regaining package stability. 

Important: Please use `apt -o APT::Keep-Downloaded-Packages="true" install package_name(s)` to populate your backup directory in conjunction with [`au`](https://raw.githubusercontent.com/WAE/au/master/au) to ensure that you can enjoy a full backup of `*.deb` files on device. 
<!-- README.md EOF -->
