# Master-Scripting-Repo

## Dotfile Repos I Personally Like

- [Thoughtbot's Dotfiles](https://github.com/thoughtbot/dotfiles)

- [mkjmski dotfiles](https://github.com/mkjmdski/.dotfiles/tree/master/zsh)

- [OuchXP Dotfiles](https://github.com/ouchxp/dot-zsh)

- [My Personal Repo of Stuff re Unixporn](https://github.com/tortious/unixporn) 

- [IloveCandee's Dope ass Dotfile Repo](https://github.com/ilovecookieee/Glorious-Dotfiles)

- [Repo of Some cool Python CLI-Visuals](https://github.com/rasmusmerzin/cli-visuals)

- [Decent Repo of Various ZPlugin configs/plugins/etc](https://github.com/zdharma/zplugin-configs)

- [Huge list of various dotfile repos](https://wiki.nikitavoloboev.xyz/unix/dotfiles)

- [Crazy Awesome Collection of Ricing Scripts for the bin](https://github.com/tortious/dotfiles_ikigai)






## Startpage Repos That Were Dope

- [Pedro-Pablo's Minimal Startpage](https://github.com/pedro-pablo/minimal-startpage-template)

- [Material-Design Style Startpage](https://github.com/guilhXavier/new-homepage)

- [Minimum Viable Startpage](https://github.com/0-Tikaro/minimum-viable-startpage)

- [Dawn Startpage](https://github.com/0-l/dawn)

- [My Personal Favorite Startpage](https://github.com/alecdtatum/start)

- [Cool Repo w/ Big List of Startpages](https://github.com/tortious/Startpages)

- [Browser startpage](https://github.com/lucasgrinspan/BrowserStartPage)

- [My Personal 1st Attempt at a startpage](https://github.com/tortious/Startpage1)

- [Zerotab - Baller Startpage based on WebOasis](https://github.com/tortious/zerotab)



## Dotfile Managers

- [Chezmoi - supposedly better than stow](https://github.com/twpayne/chezmoi)

- [DotDrop - have not tried yet but could be legit](https://github.com/deadc0de6/dotdrop)

## Awesome Lists

- [Awesome list of Awesome Lists](https://github.com/sindresorhus/awesome)

- [Awesome List of CLI-apps](https://github.com/agarrharr/awesome-cli-apps)

- [Awesome List of Shell Stuff](https://github.com/alebcay/awesome-shell)

- [Awesome Dotfiles - a persona fav of mine](https://github.com/tortious/awesome-dotfiles)
## Useful Tools & Archives
- [Repo Containing r/piracy backups](https://github.com/nid666/PiracyArchive)

- [Repo Containing the OpenDirectory-Downloader from r/opendirectories](https://github.com/KoalaBear84/OpenDirectoryDownloader)




## Various Tutorials

- [Tmux tutorial](https://leimao.github.io/blog/Tmux-Tutorial/)

- [Dope Tmux tutorial w other cool stuff in the parent folders](https://gitlab.com/TheOuterLinux/Command-Line/tree/master/System/Terminals%20and%20Muxinators/tmux)



## The following is a list of ways to fix common issues re pacman and updating
here is a list of other common errors and their fixes, which might occur (taken from pacli-simple 47 ):

           "sudo rm -f /var/lib/pacman/db.lck" 
          This command removes Pacman's database lock. The database lock prevents multiple Pacman instances from running at the same time and interfering with each other.
          ATTENTION: Only run this command when no other Pacman instance (e.g. Pacman, Yaourt, Pamac, Octopi, PacmanXG4, ...) is running.

           "sudo pacman-mirrors -g && sudo pacman -Syy"
          This command searches for working and good Manjaro repository mirrors/servers. It will automatically choose the closest server for you. The second command forces a redownload of the latest package database from the best Manjaro repository mirror. 

           "sudo dirmngr </dev/null"
          Sometimes during key management the package "dirmngr" outputs error messages, which interrupt key management processes (such as the following commands). This command prevents any output from "dirmngr".

           "sudo rm -r /etc/pacman.d/gnupg &>/dev/null"
          This command deletes your Pacman, Manjaro, and Arch key database. It does not output an error in case the package "gnupg" is not installed on your system.
          ATTENTION: This command will remove all keys from your system, including manually installed keys (with "sudo pacman-key --lsign-key <KEY>"). Please remember to reinstall those keys again after FIX ERRORS has completed!

           "sudo pacman -Sy gnupg archlinux-keyring manjaro-keyring"
          This command (re-)installs the "gnupg" package and keyrings for Arch Linux and Manjaro. Pacli actually does not use this command but instead downloads and installs these packages manually. This makes it possible to install these packages even if no other packages can be installed on your system due to key database errors.
          ATTENTION: If you want to execute this command on a system with key database problems, it will not work for you! In this case, connect manually (via your browser) to your Manjaro repository server, download these packages, and install these packages manually. Pacli will do all of this automatically for you. If this part of Pacli fails, please wait a couple of hours until your Manjaro mirror has synchronized with the main Manjaro repository and offers the latest version of these 3 packages: gnupg, archlinux-keyring, manjaro-keyring.

           "sudo pacman-key --init && sudo pacman-key --populate archlinux manjaro"
          These two commands create a fresh key for you and (re-)install all keys from Arch Linux and Manjaro. This will solve problems with your local key database and Manjaro's and Arch's key database. Such problems can occur when new new Arch Linux or Manjaro packagers get added, for example.
          ATTENTION: This command only works, when your system time is set correctly, becasue checking and importing keys or fingerprints is time sensitive! Please make sure of that before you run FIX ERRORS. If you have not set your timezone and/or summer saving time, you should still be able to import keys, though.
          ATTENTION: This command might take a long time to complete. If your system appears to stop or hang, it searches for entropy in order to generate a new key for you. In this case, it might help to do file operations with a lot of reads and/or writes per minute (such as searching for files, copying large directories, etc.). Alternatively, you can open a browser and do some heavy surfing (with a lot of mouse movements, mouse klicks, and keyboard key presses): This can help to generate entropy much faster.

           "sudo pacman -Sc"
          After an unseccessful attempt to update your system (which quit with a key error), you might have already downloaded unsigned packages to your pacman cache. These packages cannot be installed anymore.
          This command removes all packages from your pacman cache, which are not installed on your system. Afterwards, you need to download all previously downloaded but unsuccessfully installed packages again.
          ATTENTION: This command makes it impossible to DOWNGRADE PACKAGES on systems without an active internet connection.

           "sudo pacman -Syyuu"
          This last command forces a redownload of the latest package database from the best Manjaro repository mirror. Then, all your installed packages are checked against this latest package database. If an updated package is available from the Manjaro repositories, it will get downloaded and installed on your system. If an installed package is newer than the same package in the Manjaro repositories, the installed package will get downgraded. This behavior ensures your packages are always in sync with the Manajro repositories, even if you have just switched the Manjaro mirror or switched from unstable to stable branch.

