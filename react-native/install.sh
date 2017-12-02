# https://facebook.github.io/react-native/docs/getting-started.html
# Make sure you have this casks installed
# brew cask install java
# brew cask install android-sdk
# brew cask install android-ndk
# brew cask install intel-haxm

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

info 'Setting up React Native Android environment'

brew install node
brew install watchman
npm install -g react-native-cli
