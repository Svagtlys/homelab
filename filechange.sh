#! /bin/bash

ls /docker/.baseenv /docker/$1/.subenv | entr -np sh -c "cat /dev/null > /docker/$1/.env; cat /docker/.baseenv <(echo) /docker/$1/.subenv > /docker/$1/.env"
