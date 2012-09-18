#!/bin/sh

if [ $# -lt 1 ]
then
	echo "Error: Missing argument 'folder_name'"
  echo "Usage: ./mame_installer.sh folder_name [ -j3 || -j5 ]"
  exit 1
fi

if [ ! -d "$1" ]; then
	echo "> Creating folder $1"
	mkdir $1
else
  echo "Error: "$1" folder already exists. Check / remove folder before."
  exit 1
fi

# Source files
URL_ENDINGS="http://rbelmont.mameworld.info/endings.zip"
URL_MAME_SOURCE="http://mamedev.mameworld.info/releases/mame0147s.zip"

# Downloading
cd $1
USER_AGENT="Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)"
echo "> Downloading Endings"
curl -O $URL_ENDINGS -A "$USER_AGENT" -s
echo "> Downloading MAME Source"
curl -O $URL_MAME_SOURCE "-A $USER_AGENT" -s 

# Unziping
echo "> Unziping files"
unzip -qq '*.zip'
unzip	-qq mame.zip

# Patching
echo "> Executing endings"
./endings

# Building
echo "> Let's build ! (have a break, it takes long long time...)"
make $2 > mame64_build.log
echo "> [ DONE ] SDLMame 0.147 has been successfully built."
