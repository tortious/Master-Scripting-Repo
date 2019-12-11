#!/bin/bash
ERRORS="errors.txt"

rm -f "${ERRORS}"
BASE_DIR="$PWD"
grep xmlUrl subscriptions.xml | while read line; do
    C_NAME=$(echo "$line" | sed -e 's/.*text="\([^"]*\)".*/\1/g')
    C_URL=$(echo "$line" | sed -e 's/.*xmlUrl="\(.*\)".*/\1/g' -e 's|\(.*\)feeds/videos.xml?channel_id=\(.*\)|\1channel/\2|g')
    cd "${BASE_DIR}"
    mkdir -p "${C_NAME}"
    cd "${C_NAME}" && (
        youtube-dl -i --geo-bypass --skip-unavailable-fragments -c -w --write-all-thumbnails "$C_URL"
    ) || (
        echo "ERROR: cannot 'cd' into '${C_NAME}'" | tee -a "${ERRORS}"
    )
done
