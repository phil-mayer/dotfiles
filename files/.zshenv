# Add the /opt/homebrew/sbin and /opt/homebrew/bin folders to the PATH at login. On i386, add /usr/local/sbin instead.
ARCH="$(arch)"
if [[ "$OSTYPE" == "darwin"* && "$ARCH" == "arm64" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ "$OSTYPE" == "darwin"* && "$ARCH" == "i386" ]]; then
  export PATH="/usr/local/sbin:$PATH"
fi
