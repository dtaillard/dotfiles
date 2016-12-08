#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Add the bin directory (for home-brew shell scripts) to the PATH
export PATH="$PATH:$HOME/bin/"

# Export some environment variables
export EDITOR="vim"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk/"

# Add the ruby gems bin directory to the PATH
export PATH="$PATH:$HOME/.gem/ruby/2.3.0/bin/"
