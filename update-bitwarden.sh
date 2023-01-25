#!/bin/bash

BITWARDEN_DIR=bitwarden-app


if [ -L bitwarden ];
then
	echo "Removing old symbolic link: bitwarden"
	rm bitwarden
fi

NEW_BITWARDEN_FILE=`ls ${BITWARDEN_DIR}/*AppImage`

echo "Setting excutability of new file"
chmod +x ${NEW_BITWARDEN_FILE}

echo "Found new bitwarden file: ${NEW_BITWARDEN_FILE}"
echo "Creating new symlink"
ln -s ${NEW_BITWARDEN_FILE} bitwarden
