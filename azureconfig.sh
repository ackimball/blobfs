#!/bin/bash

cat > config.py << EOF
STORAGE_ACCOUNT_NAME = '$NAME'
STORAGE_ACCOUNT_KEY = '$KEY'
SAS = ''
IS_EMULATED = False
EOF


mkdir -p mnt
mkdir -p dum

start plexmediaserver
python blobfs.py dum mnt &
