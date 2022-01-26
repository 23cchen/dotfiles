[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#------------------------------------------
# BASH_COMPLETION CONFIGURATION
# brew install git bash-completion
#------------------------------------------
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

#------------------------------------------
# BASH GIT PROMPT
# brew install bash-git
#------------------------------------------
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  set __GIT_PROMPT_DIR $(brew --prefix)/opt/bash-git-prompt/share
  set GIT_PROMPT_ONLY_IN_REPO 1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

#------------------------------------------
# GO CONFIGURATION
#------------------------------------------
#export GOPATH=~/go
#export PATH=$PATH:$GOPATH/bin

#ADD Section
alias doc='cd /Users/chulavista/Sites/devdesktop/cwru-dev/docroot'
alias cdc='cd /Users/chulavista/Sites/devdesktop/cwru-dev/docroot/themes/custom/crew'
alias le='bash ~/Desktop/cwru-scripts/configmgt/loc-cexsyncbulk.sh'
alias li='bash ~/Desktop/cwru-scripts/configmgt/loc-cimsyncbulk.sh'
alias ce='bash ~/Desktop/cwru-scripts/configmgt/cloud-cexsyncbulk.sh'
alias ci='bash ~/Desktop/cwru-scripts/configmgt/cloud-cimsyncbulk.sh'
alias purge='bash ~/Desktop/cwru-scripts/purge-single-page.sh'
alias luffy='ssh cchen@97.107.128.94'
alias dc='/Users/chulavista/Sites/devdesktop/drupal-8.8.1/vendor/bin/drupal'


export PATH=$PATH:/Applications/DevDesktop/tools
export PATH=$PATH:$HOME/.composer/vendor/bin



# FastAI google cloud variables
export IMAGE_FAMILY="pytorch-latest-gpu" # or "pytorch-latest-cpu" for non-GPU instances
export ZONE="us-west2-b" # budget: "us-west1-b"
export INSTANCE_NAME="ccfastai-instance"
export INSTANCE_TYPE="n1-highmem-8" # budget: "n1-highmem-4"
alias ccf='gcloud compute ssh --zone=$ZONE jupyter@$INSTANCE_NAME -- -L 8080:localhost:8080'

# Include Drush bash customizations.
#if [ -f "/Users/chulavista/.drush/drush.bashrc" ] ; then
#  source /Users/chulavista/.drush/drush.bashrc
#fi

# Include Drush prompt customizations.
#if [ -f "/Users/chulavista/.drush/drush.prompt.sh" ] ; then
#  source /Users/chulavista/.drush/drush.prompt.sh
#fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/chulavista/google-cloud-sdk/path.bash.inc' ]; then . '/Users/chulavista/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/chulavista/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/chulavista/google-cloud-sdk/completion.bash.inc'; fi
#export PATH="/usr/local/opt/php@7.2/bin:$PATH"
#export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH=$PATH:/Applications/DevDesktop/php7_4_x64/bin/php

# ansible 


# powerline settings
#export PATH="$PATH:$HOME/Library/Python/3.7/bin"
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. /Users/chulavista/Library/Python/3.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh


#------------------------------------------
# TERMINAL CONFIGURATION
#------------------------------------------
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] \$ "
#export PS1="ÃÂ°ÃÂÃÂ¤ÃÂ©  \W"
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced

# declares an array with the emojis we want to support
set EMOJIS "(😺 😸 😹 😻 😼 😽 🙀 😿 😾)"
# function that selects and return a random element from the EMOJIS set
RANDOM_EMOJI() {
  SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
  echo $SELECTED_EMOJI;
}

# declare the terminal prompt format
export PS1='$(RANDOM_EMOJI) \@ $ '

export PATH="$PATH:/Applications/DevDesktop/tools"

export PATH="$PATH:/Applications/DevDesktop/drush_10"



#drush use DevDesktop php7.2
set PHP73 '/Applications/DevDesktop/php7_3_x64/bin/php'
set DRUSH '/Users/chulavista/Sites/devdesktop/cwru-dev/docroot/vendor/drush/drush/drush'
alias drush73='DRUSH_PHP=$PHP73 $DRUSH'



export XDEBUG_CONFIG="remote_enable=1"

