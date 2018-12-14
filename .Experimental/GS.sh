#!/bin/sh
date=$(date -u)
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root. This instance will be logged."
    echo "[FAIL] $USER attempted to run the search on $date." | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
    exit
fi
echo "---------------Games----------------|"
which 0ad && man 0ad | cat | head -n 4 | grep -i 0ad
which 0ad-data && man 0ad-data | cat | head -n 4 | grep -i 0ad-data
which 0ad-dada-common && man 0ad-data-common | cat | head -n 4 | grep -i 0ad-data-common
which 2048-at && man 2048-at | cat | head -n 4 | grep -i 2048-at
which 3dchess && man 3dchess | cat | head -n 4 | grep -i 3dchess
which 4digits && man 4digits | cat | head -n 4 | grep -i 4digits
which 7kaa && man 7kaa | cat | head -n 4 | grep -i 7kaa
which 7kaa-data && man 7kaa-data | cat | head -n 4 | grep -i 7kaa-data
# THIS IS NOT COMPLETE.
