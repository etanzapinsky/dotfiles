# ls defualt now is colored output
alias ls='ls -G'
# Prints all files (including hidden ones) with permissions
alias la='ls -laF' 
# Prints all files with permissions
alias ll='ls -lF'
# scheme edwin alias
alias edwin='scheme -edwin -edit'
# fetch = interuptable scp and then picks up where scp left off
alias fetch="rsync --archive --compress --partial --progress --append"
# launches emacs client, connecting to emacs in the current frame
alias ec="emacsclient -nw"

# Colorful grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

#EC2 command line tools
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_KEYPAIR="etanzkey"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
