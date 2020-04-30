#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1R8kMK-R17slm8bS_rj8unVppzGEYI2a7" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1R8kMK-R17slm8bS_rj8unVppzGEYI2a7" -o resources.tar.gz
tar -zxvf resources.tar.gz
rm resources.tar.gz

echo Download finished.
