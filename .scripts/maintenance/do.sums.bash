#!/usr/bin/env bash
# Copyright 2019-2022 (c) all rights reserved by S D Rausty; see LICENSE
# https://sdrausty.github.io hosted courtesy https://pages.github.com
# To create checksum files and commit use; ./do.sums.bash
# To see file tree use; awk '{print $2}' sha512.sum
# To check the files use; sha512sum -c sha512.sum
#####################################################################
set -eu
MTIME="$(ls -l --time-style=+"%s" .git/ORIG_HEAD 2>/dev/null | awk '{print $6}')"
TIME="$(date +%s)"
([[ ! -z "${MTIME##*[!0-9]*}" ]] && (if [[ $(($TIME - $MTIME)) -gt 43200 ]] ; then git pull --ff-only ; fi) || git pull --ff-only) || (printf "%s\\n" "Signal generated at [ ! -z \${num##*[!0-9]*} ]" && git pull --ff-only) || printf "%s\\n" "Signal generated at git pull: Continuing..."
.scripts/maintenance/vgen.sh
rm -f *.sum
FILELIST=( $(find . -type f | grep -vw .git | sort) )
CHECKLIST=(sha512sum) # md5sum sha1sum sha224sum sha256sum sha384sum
for SCHECK in ${CHECKLIST[@]}
do
	printf "%s\\n" "Creating $SCHECK file..."
	for FILE in "${FILELIST[@]}"
	do
		$SCHECK "$FILE" >> ${SCHECK::-3}.sum
	done
done
chmod 400 ${SCHECK::-3}.sum
for SCHECK in  ${CHECKLIST[@]}
do
	printf "%s\\n" "Checking $SCHECK..."
	$SCHECK -c ${SCHECK::-3}.sum
done
git add .
SN="$(sn.sh)" # sn.sh is located at https://github.com/BuildAPKs/maintenance.BuildAPKs/blob/master/sn.sh
([[ -z "${1:-}" ]] && git commit -m "$SN") || ([[ "${1//-}" = [Ss]* ]] && git commit -a -S -m "$SN" && pkill gpg-agent) || git commit -m "$SN"
git push
ls --color=always
printf "%s\\n" "$PWD"
# do.sums.bash EOF
