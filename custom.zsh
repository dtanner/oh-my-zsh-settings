# begin zsh-specific configs
HISTFILE=~/.bash_history
HISTSIZE=500
SAVEHIST=500

# os x annoyances
defaults write com.apple.desktopservices DSDontWriteNetworkStores true
alias ddsstore='find ~ -name .DS_Store -exec /bin/rm -f -- {} \;'

# Node.js pathing
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/sbin:/usr/local/share/npm/bin:$PATH"

# aliases
alias gra='grails run-app'
alias gta='grails test-app unit: integration:'
#alias gra='./grailsw run-app'
#alias gta='./grailsw test-app unit: integration:'

alias bm='bin/migrate'
alias bms='bin/migrate status'
alias bmu='bin/migrate up'
alias bmd='bin/migrate down'

# redis stuff
# to load brew installed redis into launch control
# ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
# launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
# to unload
# launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist
# open redis client
# redis-cli
#alias redis.start='redis-server /usr/local/etc/redis.conf'

# The Android-SDK location: /usr/local/Cellar/android-sdk/r22.0.4
export ANDROID_HOME=/usr/local/opt/android-sdk

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_51-b11-457.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home

export GRAILS_OPTS="-XX:MaxPermSize=400m -Xms1000M -Xmx2000M"

PATH=$PATH:$GRADLE_HOME/bin:$GROOVY_HOME/bin:$GRAILS_HOME/bin
#alias gradle17='switch "gradle" "gradle-1.7"'
#alias grails22='switch "grails" "grails-2.2.4"'
alias jdk6='export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_51-b11-457.jdk/Contents/Home'
alias jdk7='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home'
