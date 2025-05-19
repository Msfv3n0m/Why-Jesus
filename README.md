# Why-Jesus
## Prereqs
* docker
* vscode
* git
  * ssh key
  * signing key 
  * .gitconfig file
    * name
    * email
    * signing key location
## Setup
1. clone repo
1. ensure ssh is started and enabled
2. add the following to bashrc file
```bash
if [ -z "$SSH_AUTH_SOCK" ]; then
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]; then
        # Launch a new instance of the agent
        ssh-agent -s &> $HOME/.ssh/ssh-agent
   fi
   eval `cat $HOME/.ssh/ssh-agent` > /dev/null
fi
ssh-add $HOME/.ssh/gh 2> /dev/null
```
3. login and logout or run
```
eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/gh 2> /dev/null
```