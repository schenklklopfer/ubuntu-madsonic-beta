#!/bin/bash

#/usr/bin/madsonic --home=/config --default-music-folder=/media
/usr/share/madsonic/madsonic.sh --home=/config --context-path=/madsonic --default-music-folder=/media/music

tail -F /config/madsonic_sh.log
