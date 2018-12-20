#!/bin/bash

/usr/share/madsonic/madsonic.sh --home=/config --context-path=/madsonic --use-ssl=true --default-keystore-folder=/config/madsonic.keystore

tail -F /config/madsonic_sh.log
