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
which a7xpg && man a7xpg | cat | head -n 4 | grep -i a7xpg
which a7xpg-data && man a7xpg-data | cat | head -n 4 | grep -i a7xpg-data
which aajm && man aajm | cat | head -n 4 | grep -i aajm
which abe && man abe | cat | head -n 4 | grep -i abe
which abe-data && man abe-data | cat | head -n 4 | grep -i abe-data
which ace-of-penguins && man ace-of-penguins | cat | head -n 4 | grep -i ace-of-penguins
which acm && man acm | cat | head -n 4 | grep -i acm
which adanaxisgpl && man && | cat | head -n 4 | grep -i adanaxisgpl
which adanaxisgpl-data && man adanaxisgpl-data | cat | head -n 4 | grep -i adanaxisgpl-data
which adonthell && man adonthell | cat | head -n 4 | grep -i adonthell
which adonthell-data && man adonthell-data  | cat | head -n 4 | grep -i adonthell-data 
which airstrike && man airstrike | cat | head -n -4 | grep -i airstrike
which airstrike-common && man airstrike-common | cat | head -n 4 | grep -i airstrike-common
which aisleriot && man aisleriot | cat | head -n 4 | grep -i aisleriot
which alex4 && man alex4 | cat | head -n 4 | grep -i alex4
which alex4-data && man alex4-data | cat | head -n 4 | grep -i alex4-data
which alien-arena && man alien-arena |cat | hean -n -4 | grep -i alien-arena
which alien-arena-data && man alien-arena-data | cat | head -n 4 | grep -i alien-arena-data
which alien-arena-server && man alien-arena-server | cat | head -n 4 | grep -i alien-arena-server
which alienblaster && man alienblaster | cat | head -n 4 | grep -i alienblaster
which alienblaster-data && man alienblaster-data | cat | head -n 4 | grep -i alienblaster-data
which amoebax && man amoebax | cat | head -n 4 | grep -i amoebax
which amoebax-data && man amoebax-data | cat | head -n 4 | grep -i amoebax-data
which amphetamine && man amphetamine | cat | head -n 4 | grep -i amphetamine
which amphetamine-data  && man amphetamine-data  | cat | head -n 4 | grep -i amphetamine-data 
which an && man an | cat | head -n 4 | grep -i an
# NOT COMPLETE
