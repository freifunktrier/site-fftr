GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-15 \
	gluon-alfred \
	gluon-respondd \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-client-bridge \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-private-wifi \
	gluon-luci-wifi-config \
	gluon-luci-mesh-vpn-fastd \
	gluon-fastd-tunneling-mtu-workaround \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	iwinfo \
	iptables \
	haveged

	#disabled because it's broken anyway and does only confuse people if present but broken
	#gluon-config-mode-supernode \
	
	
# basic support for USB stack
USB_PACKAGES_BASIC := \
	kmod-usb-core \
	kmod-usb2

# storage support for USB devices
USB_PACKAGES_STORAGE := \
	block-mount \
	blkid \
	kmod-fs-ext4 \
	kmod-fs-vfat \
	kmod-usb-storage \
	kmod-usb-storage-extras \
	kmod-nls-cp1250 \
	kmod-nls-cp1251 \
	kmod-nls-cp437 \
	kmod-nls-cp775 \
	kmod-nls-cp850 \
	kmod-nls-cp852 \
	kmod-nls-cp866 \
	kmod-nls-iso8859-1 \
	kmod-nls-iso8859-13 \
	kmod-nls-iso8859-15 \
	kmod-nls-iso8859-2 \
	kmod-nls-koi8r \
	kmod-nls-utf8 \
	swap-utils

# network support for USB devices
USB_PACKAGES_NET := \
	kmod-mii \
	kmod-nls-base \
	kmod-usb-net \
	kmod-usb-net-asix \
	kmod-usb-net-asix-ax88179 \
	kmod-usb-net-cdc-eem \
	kmod-usb-net-cdc-ether \
	kmod-usb-net-cdc-mbim \
	kmod-usb-net-cdc-ncm \
	kmod-usb-net-cdc-subset \
	kmod-usb-net-dm9601-ether \
	kmod-usb-net-hso \
	kmod-usb-net-huawei-cdc-ncm \
	kmod-usb-net-ipheth \
	kmod-usb-net-kalmia \
	kmod-usb-net-kaweth \
	kmod-usb-net-mcs7830 \
	kmod-usb-net-pegasus \
	kmod-usb-net-qmi-wwan \
	kmod-usb-net-rndis \
	kmod-usb-net-rtl8152 \
	kmod-usb-net-sierrawireless \
	kmod-usb-net-smsc95xx
# broken
#	kmod-usb-net-rtl8150 \
# additional USB network devices (ie Edimax)
USB_PACKAGES_NET_ADD := \
	kmod-rtl8192cu \
	kmod-rtl8187 \
	kmod-ath9k-htc \
	kmod-ath9k-common \
	kmod-ath \
	kmod-rt73-usb \
	kmod-carl9170 \
	kmod-brcmfmac

# network support for PCI devices
PCI_PACKAGES_NET := \
	kmod-3c59x \
	kmod-atl2 \
	kmod-e100 \
	kmod-e1000 \
	kmod-forcedeth \
	kmod-natsemi \
	kmod-ne2k-pci \
	kmod-pcnet32 \
	kmod-8139too \
	kmod-r8169 \
	kmod-sis900 \
	kmod-sky2 \
	kmod-tg3 \
	kmod-tulip \
	kmod-via-rhine
# broken
#	kmod-ixgbe \
# additional packages
TOOLS_PACKAGES := \
	iperf \
	socat \
	tcpdump \
	usbutils \
	vnstat
# broken
#	pciutils \

#
# $(GLUON_TARGET) specific settings:
#

# Raspberry Pi A/B/B+
ifeq ($(GLUON_TARGET),brcm2708-bcm2708)
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(TOOLS_PACKAGES) \
	$(USB_PACKAGES_NET_ADD)
endif

# Raspberry Pi 2
ifeq ($(GLUON_TARGET),brcm2708-bcm2709)
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(TOOLS_PACKAGES) \
	$(USB_PACKAGES_NET_ADD)
endif

	
	
	
ifeq ($(GLUON_TARGET),x86-generic)
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	kmod-e1000e \
	kmod-igb \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(PCI_PACKAGES_NET) \
	$(TOOLS_PACKAGES) \
	$(USB_PACKAGES_NET_ADD)
endif

ifeq ($(GLUON_TARGET),x86-64)
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	kmod-e1000e \
	kmod-igb \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(PCI_PACKAGES_NET) \
	$(TOOLS_PACKAGES) \
	$(USB_PACKAGES_NET_ADD)
endif

ifeq ($(GLUON_TARGET),x86-kvm_guest)
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	kmod-e1000e \
	kmod-igb \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(PCI_PACKAGES_NET) \
	$(TOOLS_PACKAGES) \
	$(USB_PACKAGES_NET_ADD)
endif

ifeq ($(GLUON_TARGET),x86-xen_domu)
GLUON_SITE_PACKAGES += \
	kmod-usb-hid \
	kmod-hid-generic \
	kmod-igb \
	$(USB_PACKAGES_BASIC) \
	$(USB_PACKAGES_STORAGE) \
	$(USB_PACKAGES_NET) \
	$(PCI_PACKAGES_NET) \
	$(TOOLS_PACKAGES) \
	$(USB_PACKAGES_NET_ADD)
endif



DEFAULT_GLUON_RELEASE := 0.8.4+experimental$(shell date '+%Y%m%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 3

GLUON_LANGS ?= en de
GLUON_REGION ?= eu
GLUON_ATH10K_MESH ?= ibss
