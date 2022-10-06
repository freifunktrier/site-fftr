##	GLUON_FEATURES
#		Specify Gluon features/packages to enable;
#		Gluon will automatically enable a set of packages
#		depending on the combination of features listed

GLUON_FEATURES := \
	autoupdater \
	config-mode-outdoor \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	mesh-batman-adv-15 \
	mesh-vpn-fastd-l2tp \
	respondd \
	status-page \
	web-advanced \
	web-private-wifi \
	web-wizard
	
# 	mesh-vpn-fastd \
#	web-mesh-vpn-fastd \  # enable Web-optionsmenue for fastd-methodes in configmode
#	ebtables-limit-arp \  # enabled by default since 2018.2.1
# 	scheduled-domain-switch \

# Build both sysupgrade and factory images for deprecated devices.
GLUON_DEPRECATED=full

##	GLUON_MULTIDOMAIN
#		Build gluon with multidomain support.
GLUON_MULTIDOMAIN=1

GLUON_FEATURES_standard := wireless-encryption-wpa3

	
##	GLUON_SITE_PACKAGES
#		Specify additional Gluon/LEDE packages to include here;
#		A minus sign may be prepended to remove a packages from the
#		selection that would be enabled by default or due to the
#		chosen feature flags
#
# GLUON_SITE_PACKAGES := haveged iwinfo
#  removed in gluon V2020.2.x: haveged from  GLUON_SITE_PACKAGES, as urngd is now included by default.
GLUON_SITE_PACKAGES := iwinfo


	#disabled because it's broken anyway and does only confuse people if present but broken
	# gluon-alfred \
	# gluon-config-mode-supernode \
	# not sure but think it's obsolete
	# gluon-fastd-tunneling-mtu-workaround \



DEFAULT_GLUON_RELEASE := 0.16.0.$(shell date '+%Y%m%d')+tackin
# Just to name my testing-environments

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# GLUON_BRANCH ?= stable
GLUON_AUTOUPDATER_BRANCH ?= stable

GLUON_PRIORITY ?= 2

GLUON_LANGS ?= en de
GLUON_REGION ?= eu
