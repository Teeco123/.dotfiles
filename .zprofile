eval "$(/opt/homebrew/bin/brew shellenv)"

export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$HOME/Developer/water-renderer/lib/bgfx-cmake/build/cmake/bgfx:$PATH"
export PATH="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH"
export PATH="$HOME/Developer/cli-calendar/.build/debug:$PATH"
