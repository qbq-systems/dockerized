#!/bin/sh

echo "[gogs.sh] Checking ssh key ..."
if [ ! -f keygen.ok ]; then
  ssh-keygen -A
  touch keygen.ok
fi
echo "[gogs.sh] Checking ssh key done"

echo "[gogs.sh] Starting ssh server ..."
/usr/sbin/sshd -D -e "$@" &
echo "[gogs.sh] Starting ssh server done"

GOGS_FILE="gogs_0.13.0_linux_amd64.tar.gz"
GOGS_URL="https://dl.gogs.io/0.13.0/${GOGS_FILE}"

if [ ! -d gogs ]; then
  if [ ! -f $GOGS_FILE ]; then
    echo "[gogs.sh] Downloading ${GOGS_URL} ..."
    wget $GOGS_URL
    echo "[gogs.sh] Downloading ${GOGS_URL} done"
  fi
  echo "[gogs.sh] Extracting ${GOGS_FILE} ..."
  tar xzf $GOGS_FILE
  echo "[gogs.sh] Extracting ${GOGS_FILE} done"
fi

echo "[gogs.sh] Running gogs ..."
./gogs/gogs web --port 80
