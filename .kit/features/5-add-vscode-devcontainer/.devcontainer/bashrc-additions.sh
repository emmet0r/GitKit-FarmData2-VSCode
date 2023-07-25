# shellcheck disable=SC2148

if [ ! -f .kitclient/kituser.txt ] ; then
  while [ -z "$KIT_USER_NAME" ] ; do
    IFS= read -rp "Please enter your name: " KIT_USER_NAME
  done
  echo "$KIT_USER_NAME" | xargs > .kitclient/kituser.txt
fi
KIT_USER_NAME=$(cat .kitclient/kituser.txt) 
export PS1="\[\e[1;35m\]$KIT_USER_NAME\[\e[m:\e[1;36m\w\e[m\] \$ "
