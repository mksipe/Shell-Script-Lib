#!/bin/sh
mkdir /Framework
cd /Framework
wget -i /bin/lib/sh/MK3S/data/src2.db
tar -cxzf crackstation.txt.gz
cat crackstation.txt >> /bin/lib/sh/MK3S/data/pwhash.db
tar -cxzf crackstation-human-only.txt.gz
cat crackstation-human-only.txt >> /bin/lib/sh/MK3S/data/wordlist.db
cat latest_blacklist.txt >> /bin/lib/sh/MK3S/data/badips.db
cat latest_blacklist_users_submitted.txt >> /bin/lib/sh/MK3S/badips.db
cat latest_blacklist.txt.2 >> /bin/lib/sh/MK3S/data/badips.db
cat latest_blacklist_users_submitted.txt.2 >> /bin/lib/sh/MK3S/badips.db
cat latest_blacklist.txt.3 >> /bin/lib/sh/MK3S/data/badips.db
cat latest_blacklist_users_submitted.txt.3 >> /bin/lib/sh/MK3S/badips.db
rm -r /Framework 
cd /bin/lib/sh/MK3S