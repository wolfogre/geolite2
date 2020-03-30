#!/usr/bin/env bash

set -ex

KEY=$(cat key.txt)

wget --content-disposition "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=${KEY}&suffix=tar.gz"
wget --content-disposition "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=${KEY}&suffix=tar.gz.sha256"

sha256sum -c *.sha256

