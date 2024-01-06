##	GLUON_FEATURES
#		Specify Gluon features/packages to enable;
#		Gluon will automatically enable a set of packages
#		depending on the combination of features listed


features({
    'autoupdater',
	'config-mode-outdoor',
	'ebtables-filter-multicast',
	'ebtables-filter-ra-dhcp',
    'mesh-batman-adv-15',
    'mesh-vpn-fastd-l2tp',
    'respondd',
    'status-page',
    'web-advanced',
	'web-private-wifi',
    'web-wizard',
})

if not device_class('tiny') then
    features({
        'wireless-encryption-wpa3',
    })
end


packages({'iwinfo'})


# Build both sysupgrade and factory images for deprecated devices.
GLUON_DEPRECATED=full

##	GLUON_MULTIDOMAIN
#		Build gluon with multidomain support.
GLUON_MULTIDOMAIN=1


DEFAULT_GLUON_RELEASE := 0.16.6.$(shell date '+%Y%m%d')+tackin
# Just to name my testing-environments

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# GLUON_BRANCH ?= stable
GLUON_AUTOUPDATER_BRANCH ?= stable

GLUON_PRIORITY ?= 2

GLUON_LANGS ?= en de
GLUON_REGION ?= eu
