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
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	iwinfo \
	iptables \
	haveged

	#disabled because it's broken anyway and does only confuse people if present but broken
	# gluon-config-mode-supernode \
	
	# not sure but think it's obsolete
	# gluon-fastd-tunneling-mtu-workaround \

DEFAULT_GLUON_RELEASE := $(shell date '+%Y%m%d')_exp
# DEFAULT_GLUON_RELEASE := 0.9.1
# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_BRANCH ?= stable

GLUON_PRIORITY ?= 3

GLUON_LANGS ?= en de
GLUON_REGION ?= eu
GLUON_ATH10K_MESH ?= ibss
