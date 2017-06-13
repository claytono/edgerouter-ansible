#!/bin/vbash
     
SHELL_API=/bin/cli-shell-api

session_env=$($SHELL_API getSessionEnv $PPID)
eval $session_env
$SHELL_API setupSession

export vyatta_sbindir="/opt/vyatta/sbin"

/opt/vyatta/sbin/vyatta-load-user-key.pl \
    admin /config/local/authorized-ssh-key
