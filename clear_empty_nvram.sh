#/bin/sh
for line in `nvram show  | grep =$ `; do var=${line%*=}; nvram unset $var; done
sleep 2
nvram commit
