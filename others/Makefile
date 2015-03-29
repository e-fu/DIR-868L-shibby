include ../common.mak

all:

install:
	install -d $(INSTALLDIR)/sbin
	install -d $(INSTALLDIR)/usr/sbin
	install -d $(INSTALLDIR)/lib

ifeq ($(TCONFIG_USB),y)
# Optware perl symlink
	install -d $(INSTALLDIR)/usr/bin
	ln -sf /opt/bin/perl $(INSTALLDIR)/usr/bin/perl

ifeq ($(CONFIG_LINUX26),y)
#3G modem switch script
	install -m 0700 switch3g $(INSTALLDIR)/usr/sbin
#4G modem switch script
	install -m 0700 switch4g $(INSTALLDIR)/usr/sbin
endif
endif

ifeq ($(TCONFIG_DNSCRYPT),y)
	install -m 0700 ntp2ip $(INSTALLDIR)/usr/sbin
endif

#TomatoAnon project
	install -m 0700 tomatoanon $(INSTALLDIR)/usr/sbin

#TTB project
	install -m 0700 ttb $(INSTALLDIR)/usr/sbin

#Ethernet state report
	install -m 0700 ethstate $(INSTALLDIR)/usr/sbin

#stealthMode
	install -m 0700 stealthMode $(INSTALLDIR)/usr/sbin

#MOTD
	install -m 0700 mymotd $(INSTALLDIR)/usr/sbin

#sysinfo-helper
	install -m 0700 sysinfo-helper $(INSTALLDIR)/usr/sbin

#Link Aggregation
	install -m 0700 LinkAgg $(INSTALLDIR)/usr/sbin

#Web Monitor Backup Script
	install -m 0700 webmon_bkp $(INSTALLDIR)/usr/sbin

ifeq ($(TCONFIG_USB),y)
#optware install script
	install -m 0700 optware-install.sh $(INSTALLDIR)/usr/sbin
endif

ifeq ($(TCONFIG_USB),y)
#entware install script
	install -m 0700 entware_install_arm.sh $(INSTALLDIR)/usr/sbin
endif

# clean nvram from unused settings, normaly to be used 
# if you have limited NVRAM before a reboot, name it parnanoid :)
	install -m 0700 clear_empty_nvram.sh $(INSTALLDIR)/usr/sbin
	
# install VYPRVPN
	install -m 0700 vyprvpn.sh $(INSTALLDIR)/usr/sbin

# cron helper
	install -m 0700 cru $(INSTALLDIR)/usr/sbin

# system info
	install -m 0700 sysinfo $(INSTALLDIR)/usr/sbin

# nas starter # AB multiSSID
	install -m 0700 nas.sh $(INSTALLDIR)/usr/sbin

# try to get ipv6 gw if not found
	install -m 0700 get_ipv6_gw.sh $(INSTALLDIR)/usr/sbin

# set ipv6 gw if found with ip -6 neigh
	install -m 0700 set_ipv6_gw.sh $(INSTALLDIR)/usr/sbin

clean:
