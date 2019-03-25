##	GLUON_FEATURES
#		Specify Gluon features/packages to enable;
#		Gluon will automatically enable a set of packages
#		depending on the combination of features listed

GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	mesh-batman-adv-15 \
	mesh-vpn-fastd \
	radvd \
	respondd \
	scheduled-domain-switch \
	status-page \
	web-advanced \
	web-private-wifi \
	web-wizard

##	GLUON_MULTIDOMAIN
#		Build gluon with multidomain support.
GLUON_MULTIDOMAIN=1

	
##	GLUON_SITE_PACKAGES
#		Specify additional Gluon/LEDE packages to include here;
#		A minus sign may be prepended to remove a packages from the
#		selection that would be enabled by default or due to the
#		chosen feature flags
GLUON_SITE_PACKAGES := haveged iwinfo

	#disabled because it's broken anyway and does only confuse people if present but broken
	# gluon-alfred \
	# gluon-config-mode-supernode \
	# not sure but think it's obsolete
	# gluon-fastd-tunneling-mtu-workaround \



DEFAULT_GLUON_RELEASE := 0.11.$(shell date '+%Y%m%d')+tackin
# Just to name my testing-environments

# DEFAULT_GLUON_RELEASE := 0.11.1
# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_BRANCH ?= stable

GLUON_PRIORITY ?= 2

GLUON_LANGS ?= en de
GLUON_REGION ?= eu
# GLUON_ATH10K_MESH ?= ibss # old!

# GLUON_WLAN_MESH = ibss
# If not set "11s" will be default
