# Mame-Installer

A simple shell script to download source, patch and compile MAME ([SDLMAME](http://rbelmont.mameworld.info/?page_id=163)) on OSX / Linux using SDL Framework.  
Current version if __0.147u1__.

## What is MAME ?

MAME stands for Multiple Arcade Machine Emulator. When used in conjunction with images of the original arcade game's ROM and disk data, MAME attempts to reproduce that game as faithfully as possible on a more modern general-purpose computer. MAME can currently emulate several thousand different classic arcade video games from the late 1970s through the modern era.
(_source <http://mamedev.org/>_)

## What is MAME Installer ?

MAME can be downloaded from it official website <http://mamedev.org/> but is only available as Windows executables.  
If you want to run MAME under OSX / Linux, you have to :

* download it from the great <http://sdlmame.lngn.net/> (OSX) or _apt-get install sdlmame_ (Debian)
* compile it by yourself

This script should help you in this second case.

## Prerequisites

On OSX :

* Latest [_XCode_](http://itunes.apple.com/fr/app/xcode/id497799835?mt=12) from AppStore
* _SDL.Framework_ from <http://www.libsdl.org/download-1.2.php> 

On Linux :

* build-essential
* gconf2
* libgconf2-dev
* libgtk2.0-dev
* libsdl1.2-dev
* libsdl-ttf2.0-dev

## Howto

Basic usage :

    bash mame_installer.sh ~/Desktop/MAME

Optional param for faster build :

    # for dual-core processors
    bash mame_installer.sh ~/Desktop/MAME -j3
    
    # for quad-core processors
    bash mame_installer.sh ~/Desktop/MAME -j5

Now wait until the end of compilation (~35min@basic / ~25min@j3 on my MBA 1.8Ghz Intel Core i7)
You should find a fresh _mame64_ binary ready to use.


## Tested on 

* [PASSED] Mac OSX 10.8 / XCode 4.4.1
* [FAILED] Debian GNU/Linux Squeeze 2.6.32-5-amd64 (gcc4.4 issue ?)

## TODO

* Add a check on install folder to ask for files overwrite
* Don't hardcode files URL to fetch which are version specific...

## Feedbacks

Do not hesitate to contribute !
