#!/bin/sh
echo "Results, This may take a while..."
if [ $# -ne 1 ] ; then
    echo "Usage: ./Mediascan.sh <File Extension (.mp3, .mov, etc.)> "
    echo " Will search system for file extension given."
exit 255
fi
find / -name "*.mp3" | grep $1
find / -name "*.mp4" | grep $1
find / -name "*.aac" | grep $1
find / -name "*.mebm" | grep $1
find / -name "*.mkv" | grep $1
find / -name "*.flv" | grep $1
find / -name "*.vob" | grep $1
find / -name "*.ogv" | grep $1
find / -name "*.ogg" | grep $1
find / -name "*.drc" | grep $1
find / -name "*.gif" | grep $1
find / -name "*.gifv" | grep $1
find / -name "*.mng" | grep $1
find / -name "*.avi" | grep $1
find / -name "*.mov" | grep $1
find / -name "*.qt" | grep $1
find / -name "*.wmv" | grep $1
find / -name "*.yuv" | grep $1
find / -name "*.rm" | grep $1
find / -name "*.rmvb" | grep $1
find / -name "*.asf" | grep $1
find / -name "*.amv" | grep $1
find / -name "*.m4p" | grep $1
find / -name "*.mpg" | grep $1
find / -name "*.mp2" | grep $1
find / -name "*.mpeg" | grep $1
find / -name "*.mpe" | grep $1
find / -name "*.mpv" | grep $1
find / -name "*.m2p" | grep $1
find / -name "*.3gp" | grep $1
find / -name "*.3g2" | grep $1
find / -name "*.mxf" | grep $1
find / -name "*.roq" | grep $1
find / -name "*.nsv" | grep $1
find / -name "*.f4v" | grep $1
find / -name "*.f4p" | grep $1
find / -name "*.f4a" | grep $1
find / -name "*.f4b" | grep $1
find / -name "*.3gp" | grep $1
find / -name "*.aa" | grep $1
find / -name "*.aax" | grep $1
find / -name "*.act" | grep $1
find / -name "*.aiff" | grep $1
find / -name "*.amr" | grep $1
find / -name "*.ape" | grep $1
find / -name "*.au" | grep $1
find / -name "*.awb" | grep $1
find / -name "*.dct" | grep $1
find / -name "*.dss" | grep $1
find / -name "*.dvf" | grep $1
find / -name "*.flac" | grep $1
find / -name "*.gsm" | grep $1
find / -name "*.iklax" | grep $1
find / -name "*.ivs" | grep $1
find / -name "*.m4a" | grep $1
find / -name "*.m4b" | grep $1
find / -name "*.mmf" | grep $1
find / -name "*.mpc" | grep $1
find / -name "*.msv" | grep $1
find / -name "*.oga" | grep $1
find / -name "*.mogg" | grep $1
find / -name "*.opus" | grep $1
find / -name "*.ra" | grep $1
find / -name "*.rm" | grep $1
find / -name "*.raw" | grep $1
find / -name "*.s1n" | grep $1
find / -name "*.tta" | grep $1
find / -name "*.vox" | grep $1
find / -name "*.wma" | grep $1
find / -name "*.wv" | grep $1
find / -name "*.webm" | grep $1
find / -name "*.8svx" | grep $1
find / -name "*.wav" | grep $1
echo "Search from functions file"
    find / -name "*.a" | grep $1 # Static library
    find / -name "*.au" | grep $1 # Audio file
    find / -name "*.bin" | grep $1 # Binary file
    find / -name "*.bz2" | grep $1 # File compressed with bzip2
    find / -name "*.c" | grep $1 # A C source file
    find / -name "*.conf" | grep $1 # A configuration file extension
    find / -name "*.cpp" | grep $1 # C++ source file
    find / -name "*.deb" | grep $1 # Debian package
    find / -name "*.diff" | grep $1 # A file containing instructions to apply a patch from a base version to another from a single file or project
    find / -name "*.dsc" | grep $1 # A Debian source information file
    find / -name "*.ebuild" | grep $1 # Bash script used to install programs through the portage system
    find / -name "*.el" | grep $1 # Emacs lisp code file
    find / -name "*.elc" | grep $1 # compiled emacs lisp code file
    find / -name "*.gif" | grep $1 # a graphical or image file
    find / -name "*.h" | grep $1 # Header file
    find / -name "*.html" | grep $1 # hypertext markup language file
    find / -name "*.htm" | grep $1 # hypertext markup language file
    find / -name "*.iso" | grep $1 # Isolation file, usually used to act as a copy of CD-ROM or DVD in the ISO-9660 filesystem format
    find / -name "*.jpg" | grep $1 # graphical image or file
    find / -name "*.ko" | grep $1 # The kernel module extension for the 2.6.x series kernel
    find / -name "*.la" | grep $1 # a file created by libtool to aide in using the library
    find / -name "*.lo" | grep $1 # The intermediate file of a library that is being compiled
    find / -name "*.lock" | grep $1 # Locked file that prevents the use of another file
    find / -name "*.log" | grep $1 # A system or program" | grep $1s log file
    find / -name "*.m4" | grep $1 # M4 macro code file
    find / -name "*.o" | grep $1 # A profile that is being compiled
    find / -name "*.pdf" | grep $1 # electronic image of a document
    find / -name "*.php" | grep $1 # A php serverside script
    find / -name "*.pid" | grep $1 # A file that contains a program" | grep $1s PID
    find / -name "*.pl" | grep $1 # A perl script
    find / -name "*.png" | grep $1 # A graphical image
    find / -name "*.ps" | grep $1 # A postscript file
    find / -name "*.py" | grep $1 # Python script
    find / -name "*.rpm" | grep $1 # A rpm package
    find / -name "*.s" | grep $1 # Assembly source code file
    find / -name "*.sh" | grep $1 # shell script 
    find / -name "*.so" | grep $1 # A shared object
    find / -name "*.src" | grep $1 # A source code file
    find / -name "*.sfs" | grep $1 # A squashfs filesystem 
    find / -name "*.tar" | grep $1 # Zipped file using tar
    find / -name "*.tar.bz2" | grep $1 # zipped with tar and bz2
    find / -name "*.tbz2" | grep $1 # File zipped with tbz2
    find / -name "*.tar.gz" | grep $1 # File zipped with tar and GZ
    find / -name "*.tcl" | grep $1 # TCL script
    find / -name "*.tgz" | grep $1 # Compressed file per file compression.
    find / -name "*.txt" | grep $1 # Text file using ASCII 
    find / -name "*.xbm" | grep $1 # xWindows Bitmap Image
    find / -name "*.xpm" | grep $1 # image file
    find / -name "*.xcf.gz" | grep $1 # GIMP image
    find / -name "*.xcf" | grep $1 # GIMP image
    find / -name "*.xwd" | grep $1 # A screenshot of a window taken with xwd
    find / -name "*.zip" | grep $1 # A zipped file
    find / -name "*.wav" | grep $1 # a wav file format
    find / -name "*.mp3" | grep $1 # MP3 audio file
    find / -name "*.mp4" | grep $1 # MP4 audio file
    find / -name "*.aac" | grep $1 # Advanced Audio Cue File
    find / -name "*.mebm" | grep $1
    find / -name "*.mkv" | grep $1
    find / -name "*.flv" | grep $1
    find / -name "*.vob" | grep $1
    find / -name "*.ogv" | grep $1
    find / -name "*.ogg" | grep $1
    find / -name "*.drc" | grep $1
    find / -name "*.gif" | grep $1
    find / -name "*.gifv" | grep $1
    find / -name "*.mng" | grep $1
    find / -name "*.avi" | grep $1
    find / -name "*.mov" | grep $1
    find / -name "*.qt" | grep $1
    find / -name "*.wmv" | grep $1
    find / -name "*.yuv" | grep $1
    find / -name "*.rm" | grep $1
    find / -name "*.rmvb" | grep $1
    find / -name "*.asf" | grep $1
    find / -name "*.amv" | grep $1
    find / -name "*.m4p" | grep $1
    find / -name "*.mpg" | grep $1
    find / -name "*.mp2" | grep $1
    find / -name "*.mpeg" | grep $1
    find / -name "*.mpe" | grep $1
    find / -name "*.mpv" | grep $1
    find / -name "*.m2p" | grep $1
    find / -name "*.3gp" | grep $1
    find / -name "*.3g2" | grep $1
    find / -name "*.mxf" | grep $1
    find / -name "*.roq" | grep $1
    find / -name "*.nsv" | grep $1
    find / -name "*.f4v" | grep $1
    find / -name "*.f4p" | grep $1
    find / -name "*.f4a" | grep $1
    find / -name "*.f4b" | grep $1
    find / -name "*.3gp" | grep $1
    find / -name "*.aa" | grep $1
    find / -name "*.aax" | grep $1
    find / -name "*.act" | grep $1
    find / -name "*.aiff" | grep $1
    find / -name "*.amr" | grep $1
    find / -name "*.ape" | grep $1
    find / -name "*.au" | grep $1
    find / -name "*.awb" | grep $1
    find / -name "*.dct" | grep $1
    find / -name "*.dss" | grep $1
    find / -name "*.dvf" | grep $1
    find / -name "*.flac" | grep $1
    find / -name "*.gsm" | grep $1
    find / -name "*.iklax" | grep $1
    find / -name "*.ivs" | grep $1
    find / -name "*.m4a" | grep $1
    find / -name "*.m4b" | grep $1
    find / -name "*.mmf" | grep $1
    find / -name "*.mpc" | grep $1
    find / -name "*.msv" | grep $1
    find / -name "*.oga" | grep $1
    find / -name "*.mogg" | grep $1
    find / -name "*.opus" | grep $1
    find / -name "*.ra" | grep $1
    find / -name "*.rm" | grep $1
    find / -name "*.raw" | grep $1
    find / -name "*.s1n" | grep $1
    find / -name "*.tta" | grep $1
    find / -name "*.vox" | grep $1
    find / -name "*.wma" | grep $1
    find / -name "*.wv" | grep $1
    find / -name "*.webm" | grep $1
    find / -name "*.8svx" | grep $1
    find / -name "*.wav" | grep $1
    find / -name "*.webp" | grep $1
    find / -name "*.svg" | grep $1
    find / -name "*.ai" | grep $1
    find / -name "*.eps" | grep $1
echo "Done"
echo [SUCCESS] Mediascan.sh ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log