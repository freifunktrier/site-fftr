GLUON_SITE_PACKAGES := \
	gluon-alfred \
	gluon-respondd \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-web-admin \
	gluon-web-autoupdater \
	gluon-web-network \
	gluon-web-wifi-config \
	gluon-web-private-wifi \
	gluon-mesh-batman-adv-15 \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	haveged \
iwinfo
	#disabled because it's broken anyway and does only confuse people if present but broken
	# gluon-config-mode-supernode \
	
	# not sure but think it's obsolete
	# gluon-fastd-tunneling-mtu-workaround \

DEFAULT_GLUON_RELEASE := 0.10.$(shell date '+%Y%m%d')_exp
# DEFAULT_GLUON_RELEASE := 0.9.1
# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_BRANCH ?= stable

GLUON_PRIORITY ?= 2

GLUON_LANGS ?= en de
GLUON_REGION ?= eu
GLUON_ATH10K_MESH ?= ibss
