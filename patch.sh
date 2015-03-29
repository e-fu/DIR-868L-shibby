#!/bin/sh
PATCH_DIR=/data/patch
SOURCE_DIR=/data/tomato-arm/release/src-rt-6.x.4708
/bin/sh $PATCH_DIR/chmod.sh
/bin/cp -f $PATCH_DIR/tomato.c $SOURCE_DIR/router/httpd/
/bin/cp -f $PATCH_DIR/Makefile $SOURCE_DIR
/bin/cp -f $PATCH_DIR/defaults.c $SOURCE_DIR/router/shared/defaults.c
/bin/cp -f $PATCH_DIR/*.asp $SOURCE_DIR/router/www/
/bin/cp -f $PATCH_DIR/entware_install_arm.sh $SOURCE_DIR/router/others/
/bin/cp -f $PATCH_DIR/clear_empty_nvram.sh $SOURCE_DIR/router/others/
/bin/cp -f $PATCH_DIR/get_ipv6_gw.sh $SOURCE_DIR/router/others/
/bin/cp -f $PATCH_DIR/set_ipv6_gw.sh $SOURCE_DIR/router/others/
/bin/cp -f $PATCH_DIR/vyprvpn.sh $SOURCE_DIR/router/others/
/bin/cp -f $PATCH_DIR/others/Makefile $SOURCE_DIR/router/others/Makefile
/bin/chmod 755 $PATCH_DIR/patch.sh
