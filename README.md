# DIR-868L-shibby

Download the patch:


    git clone https://github.com/efries/DIR-868L-shibby.git
    cd DIR-868L-shibby
    # Run Patch
    sh ./patch.sh

Add this into the Makefile (near dir868l)

    dir868l_vypr:
	     @$(MAKE) bin ARM=y NVRAM_SIZE=32 NAND=y BCMSMP=y ASUS_TRX="DLINK" UFSD="ASUS" CTF=y GRO=y NTFS=y BBEXTRAS=y USBEXTRAS=y EBTABLES=y IPV6SUPP=y MEDIASRV=y B=E BUILD_DESC="VYPR" USB="USB" OPENVPN=y DNSSEC=y DNSCRYPT=y UPS=y



[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/efries/dir-868l-shibby/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

