#!/bin/bash

/usr/share/madsonic/madsonic.sh --home=/config \ 
--context-path=/madsonic \ 
--default-music-folder=/media/music \
 --default-keystore-folder=/config/madsonic.keystore

tail -F /config/madsonic_sh.log
