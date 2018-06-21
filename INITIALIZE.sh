#!/bin/sh
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root."
    exit
fi
DATE=$(date -u)
echo -e "Initializing Directories"
mkdir /Framework
chmod 755 *.sh
chmod 755 *.md
chmod 755 *.txt
chmod 755 *.bash_aliases 2> /dev/null
chmod 755 LICENSE
chmod 755 *.conf
chmod 755 *.pl
chmod 755 Makefile
chmod 755 changelog
chmod 755 config
chmod 755 control
chmod 755 postinst
chmod 755 postrm
chmod 755 preinst
chmod 755 prerm
chmod 755 *.log
chmod 755 *.c
chmod 755 *.py
chmod 755 *.db
mv *.sh /Framework
mv *.md /Framework
mv *.txt /Framework
mv *.bash_aliases /Framework 2> /dev/null
mv LICENSE /Framework
mv *.conf /Framework
mv *.pl /Framework
mv conf /Framework
mv default /Framework
mv mod /Framework
mv changelog /Framework
mv config /Framework
mv control /Framework
mv postinst /Framework
mv postrm /Framework
mv preinst /Framework
mv prerm /Framework
mv *.log /Framework
mv Makefile /Framework
mv *.c /Framework
mv *.py /Framework
mv *.db /Framework
rm -r $(pwd)/Shell-Script-Lib
cd /Framework
mkdir /bin/lib 
mkdir /bin/lib/sh 
mkdir /bin/lib/sh/MK3S
mkdir /bin/lib/sh/MK3S/logs
mkdir /bin/lib/sh/MK3S/data
mv *.log /bin/lib/MK3S/logs
mv *.sh /bin/lib/sh/MK3S
mv *.conf /bin/lib/sh/MK3S
mv *.pl
mv LICENSE /bin/lib/sh/MK3S
mv conf /bin/lib/sh/MK3S
mv default /bin/lib/sh/MK3S
mv mod /bin/lib/sh/MK3S
mv Makefile /bin/lib/sh/MK3S
mv changelog /bin/lib/sh/MK3S
mv config /bin/lib/sh/MK3S
mv control /bin/lib/sh/MK3S
mv postinst /bin/lib/sh/MK3S
mv postrm /bin/lib/sh/MK3S
mv preinst /bin/lib/sh/MK3S
mv prerm /bin/lib/sh/MK3S
mv *.c /bin/lib/sh/MK3S
mv *.py /bin/lib/sh/MK3S
mv *.db /bin/lib/sh/MK3S/data
rm -r /Framework
echo "Software installed by $USER on $DATE in $(pwd)" | sudo tee /bin/lib/sh/MK3S/Version.txt