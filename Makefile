KEY=$(shell cat key.txt)

download:
	wget -nc --content-disposition "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=$(KEY)&suffix=tar.gz"
	wget -nc --content-disposition "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=$(KEY)&suffix=tar.gz.sha256"
	sha256sum -c *.sha256	
