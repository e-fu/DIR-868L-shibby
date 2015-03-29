#!/bin/sh
PATCH_DIR=/data/patch
SOURCE_DIR=/data/tomato-arm/release/src-rt-6.x.4708
/bin/sh $PATCH_DIR/chmod.sh
/bin/cp -f $PATCH_DIR/tomato.c $SOURCE_DIR/router/httpd/
/bin/cp -f $PATCH_DIR/defaults.c $SOURCE_DIR/router/shared/defaults.c
/bin/cp -f $PATCH_DIR/*.asp $SOURCE_DIR/router/www/
/bin/cp -f $PATCH_DIR/entware_install_arm.sh $SOURCE_DIR/router/others/
/bin/cp -f $PATCH_DIR/clear_empty_nvram.sh $SOURCE_DIR/router/others/
/bin/cp -f $PATCH_DIR/get_ipv6_gw.sh $SOURCE_DIR/router/others/
/bin/cp -f $PATCH_DIR/set_ipv6_gw.sh $SOURCE_DIR/router/others/
/bin/cp -f $PATCH_DIR/vyprvpn.sh $SOURCE_DIR/router/others/
/bin/cp -f $PATCH_DIR/others/Makefile $SOURCE_DIR/router/others/Makefile
/bin/chmod 755 $PATCH_DIR/patch.sh
echo 'add into the Makefile near dir868l:  dir868l_vypr: @$(MAKE) bin ARM=y NVRAM_SIZE=32 NAND=y BCMSMP=y ASUS_TRX="DLINK" UFSD="ASUS" CTF=y GRO=y NTFS=y BBEXTRAS=y USBEXTRAS=y EBTABLES=y IPV6SUPP=y MEDIASRV=y B=E BUILD_DESC="VYPR" USB="USB" OPENVPN=y DNSSEC=y DNSCRYPT=y UPS=y'
