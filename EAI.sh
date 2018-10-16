#!/bin/sh
apt install thunderbird -y
#From the guys that brought us Firefox, Thunderbird is Mozilla’s email client. While it technically is still maintained and various bug fixes continue to be released, there hasn’t been a major update in quite some time. But really, how “updated” does an email client need to be? Can it send and receive email? Yes? Okay, then it’s purpose is fulfilled. ​
apt install geary -y
#The default email client that comes with the GNOME 3 Desktop environment. Distros that use the pure GNOME 3 desktop environment (such as Fedora) will likely have this installed by default. ​
apt install evolution -y
#Not just an email client, it also functions as a complete personal information management suite, including useful tools such as Calendar. Its functionality is very similar to Microsoft Outlook, and it can actually be connected to a Microsoft Exchange server if desired.
apt install chromium-browser -y && apt install firefox -y
#you know what these are. But rather than choose one over the other, you could take the middle route and install both! Some Firefox addons are not in Chrome, and vice-versa. And maybe you want to keep certain bookmarks and addons separate between two browsers, i.e. one for work and one for play.
apt install LibreOffice -y
#The Linux replacement for Microsoft Office, this can do everything Microsoft Office can do, and you don’t have to pay hundreds of dollars for it. Most distros include LibreOffice by default.
apt install gscan2pdf -y
#A simple app for scanning documents to the PDF format, which students may find useful, but is also helpful when you need to upload official documents you may have.
apt install keepassx -y
#If you’re getting to the point where you have so many accounts with so many different passwords and you just can’t mentally keep track of them all anymore, then KeePass will be immensely useful for you. It’s a password manager that will store all of your usernames and passwords in an encrypted database. Just make sure you don’t forget the KeePass password!
apt install virtualbox -y
#If you want to experiment with different Linux distros, or different operating systems in general, you can install VirtualBox and run a virtual machine inside of your actual machine. Performance won’t be quite as good as a native OS installation, but if your system has enough horsepower you’ll notice minimal performance degradation.
apt install wiznote -y
#A Linux alternative to Evernote, OneNote, and other similar note taking applications.
apt install gdebi -y
#If you’re running a Debian-based system (such as Ubuntu or Mint), occasionally you won’t be able to find certain software in the official repositories and you’ll have to install a .deb package (or install a PPA, if applicable). gdebi allows you to execute .deb packages, which will install that particular software (you can think of .deb files as the Ubuntu/Mint/Debian equivalent to .exe files in Windows).
apt install XDM -y
#Download managers. I personally don’t like download managers (with the exception of DownThemAll for Firefox, but that’s only used in certain cases), but some people do. In my opinion, browsers’ built-in download managers are sufficient. But hey, it’s your system, install whatever you like.
apt install ufw -y && apt install gufw -y
#The Linux firewall. GUFW is the GUI version of UFW, which is typically run in a command line terminal. Super simple to configure and enable/disable, definitely less of a headache than Windows Firewall.
apt install Gimp -y
#Linux’s answer to Photoshop. Probably the most popular image editor on Linux.
apt install pinta -y
#If you don’t need all the bells and whistles of GIMP, Pinta is a Linux alternative to MS Paint.
apt install BleachBit -y
#The Linux equivalent to Windows’ CCleaner, with some extra features such as secure file shredding. Linux systems don’t typically need much cleaning in the first place, but when they do, BleachBit is handy tool to have.
apt install scudcloud -y
#An unofficial Linux client for the Slack messaging program (not to be confused with the Slackware Linux distro). If your organization communicates primarily on Slack, you’ll want this. Slack itself also has a Linux application in Beta that’s currently available for Ubuntu and Fedora.
apt install synaptic -y
#A package manager, installed by default on many distros but not all. It provides an alternative way to install and remove packages. Many advanced users prefer it over using the included Software Center applications on many distros.
apt install dropbox -y
#Cloud storage, and they have an official native Linux client! Something that Google Drive has yet to deliver on.
apt install VLC -y
#The video player that will play anything, no questions asked. If you’re tired of always having to find codecs on Windows, VLC solves that problem for you. It can also play audio files and can even function as a podcast manager or “podcatcher”, along with several hidden features that not many people know about.
apt install Unity-Tweak-Tool -y
#For Ubuntu systems, some advanced configuration options aren’t included in a GUI menu by default and have to be done via command line terminal. Unity Tweak Tool provides a GUI for these advanced configurations, most commonly for GTK and Icon themes. There’s also a GNOME Tweak Tool for GNOME desktops.
apt install sublime -y
#A beautiful text editor, and a favorite among many developers. It’s free to try indefinitely, $70 to buy the license, a rarity for Linux applications as the overwhelming majority are free.
apt install atom -y
#Another beautiful text editor, without the $70 price tag
apt install notepadqq -y
#​If you’re a fan of Notepad++ on Windows, you’ll be glad to know that the developer has a Linux port called notepadqq. It may not be in your distro’s official repositories, but you can always add a PPA or install the package manually.
apt install brackets -y
#Another text editor. They all basically do the same thing, they just have different sets of bells and whistles.
apt install cheese -y
#Linux’s webcam application. Some video chat apps may require it as a dependency. ​
apt install Gparted -y
#The GUI version to Linux’s command line parted utility. Used for disk management (i.e. formatting and partitions).
apt install crashPlan -y 
​#Backup utility for Linux. Remember, if your data isn’t backed up in at least 2 other places, it doesn’t exist.
apt install kodi -y
#All in one media player, similar to VLC in terms of functionality. Also used to run Steam on Arch Linux.
apt install genymotion -y 
#If you develop for Android, you’ll need something to test your code on. Genymotion is an Android emulator so that you can test your Android apps without having to actually use an Android device.
apt install tomahawk -y
#An all-in-one music player that allows you to connect all of your various music accounts (Spotify, YouTube, Last.fm, and more) together in one seamless application.
apt install gnome-system-monitor -y
#Part of the GNOME desktop, the system monitor allows you to view information about your system in real time, such as CPU usage, RAM usage, temperatures, bandwidth, storage space, and more
apt install conky -y
#The Linux alternative to Rainmeter on Windows. Generally used for system monitoring, conky will display lightweight “skins” on your desktop that function as persistent system monitors (whereas tools like GNOME System Monitor will open in their own windows). It’s a bit tricker to configure than Rainmeter, but you can download Conky Manager and import pre-made Conky configs. Or you can always make your own if you know how to code them.
apt install transmission -y 
#Super basic bittorrent client. Comes installed by default in Ubuntu.
apt install qbittorrent -y
#One of many torrent clients for Linux. They all basically do the same thing, so find one that has a UI that you like.
apt install Tixati -y
#Another bittorrent client. Man, there’s a ton of these. They all basically do the same thing, download and upload torrents. ​
apt install steam -y
#Never fear gamers, Steam works on Linux as well as Windows, however that doesn’t mean that every game is Linux compatible. Most (if not all) of the Valve releases are Linux compatible, so if you’re a Counter Strike or Team Fortress player, you should be able to play on Linux (assuming your graphics drivers are set up properly). Many games are Windows only though, so you might have to venture outside of your comfort zone to find some new Linux compatible games. You can actually search the Steam Store for Linux compatible games. If you have Windows games that you just can’t live without, there is still hope...
apt install wine -y
#Stands for WINE Is Not an Emulator, allows you to run Windows applications on Linux. It’s not perfect, many applications and games work flawlessly, but some just won’t no matter how hard you try. Your mileage may vary.
apt install playonlinux -y
#​A “helper” application for WINE, which can make the installation of certain games much easier.
apt install veracrypt -y
#The continuation of the now defunct TrueCrypt project, allows you to create encrypted volumes on your system. We’ve actually got an article on it somewhere…[http://www.linuxandubuntu.com/home/encrypt-data-in-linux-with-veracrypt-an-alternative-to-truecrypt]
apt install filezilla -y 
#Offering both a client and server version, FileZilla is easily the best FTP client available. I’m not sure who even uses FTP anymore, but it’s there if you need it. Maybe you have 500GB of files that you need to send to someone?
apt install pidgin -y 
#Universal chat client, allows you to connect basically all of your various chat/IM accounts into one place (AIM, Yahoo, MSN, IRC, and more).
apt install skype -y
#The famous video chat application, everyone knows what Skype is. However, be cautious of installing it on your system, there are some mysterious security concerns surrounding it. We suggest using whatever video chat alternatives you can find.
apt install brasero -y
#CD/DVD burning application, comes installed by default in Ubuntu. Not many people burn CDs anymore, or even use ODDs at all for that matter, but if you still have the need to burn physical disks, Brasero will be your best bet.
apt install audacity -y 
#A basic audio editor. It’s not professional studio quality, but if you need to edit some audio for your own personal YouTube videos, Audacity is a great tool.
apt install openshot -y 
#A solid video editor for Linux. Similar in functionality to Windows Movie Maker. Like Audacity, it’s not professional studio quality, but it’s more than sufficient for the everyday user that likes to make YouTube videos. I had some performance issues once I got past the 60-90 min mark, but I’m not sure if that was the fault of Openshot or if my hardware just couldn’t keep up.
apt install handbrake -y
#Desktop recording application, useful for screencasts, LetsPlays, and tutorial videos.
apt install recordmydesktop -y 
#Same as above, desktop recording application.
apt install kazam -y
#Another screen recording/screencasting application.
apt install winff -y 
#Video converter, super helpful if you have a video in one format but you need it to be in a different format.
apt install gnome -y 
#Gnome is a desktop environment that is very simple and powerful but is sleek for its type.
apt install 