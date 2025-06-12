#!/usr/bin/bash

echo "$ROOT_PASSWORD" | passwd root --stdin
/etc/init.d/vivaldiframeworkd start

tail -f /dev/null
