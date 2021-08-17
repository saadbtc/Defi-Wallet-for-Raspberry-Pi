#!/bin/sh
#!/usr/bin/env fish
ainVersion=$1
url="https://github.com/Martin8617/Defi-Node-for-Raspberry-Pi/releases/download/v${ainVersion}/defichain-${ainVersion}-arm64-raspi.tar.gz"
outfile="defichain-${ainVersion}-arm64-raspi.tar.gz";
mkdir -p binary
cd binary && rm -rf win mac linux
mkdir linux
cd ..
mkdir -p temp
cd temp && rm -rf linux
mkdir linux && cd linux
wget "${url}"
tar -xvf "${outfile}"
cp "defichain-${ainVersion}/bin/defid" .
cd ../.. && cp temp/linux/defid binary/linux/defid
rm -rf temp/
chmod 777 binary/linux/defid