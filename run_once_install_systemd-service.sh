#!/usr/bin/env sh

cyan=$'\e[0;96m'
white=$'\e[0;97m'
endc=$'\e[0m'


msg()
{
    echo ""
    echo "$cyan--------------------------------------------------$endc"
    echo "$cyan-->$white $1 $endc"
    echo ""
}

bye()
{
    echo ""
    echo "$cyan-->$white End for $0 $endc"
    echo "$cyan--------------------------------------------------$endc"
}

msg "Execute $0..."

services="sync-passwords.timer"
systemctl="systemctl --user"

for service in $services ; do
    echo -n "$service... "
    if ! $systemctl is-enabled $service ; then $systemctl enable $service; fi
    echo -n "$service... "
    if ! $systemctl is-active $service ; then $systemctl start $service; fi
done

trap bye EXIT
