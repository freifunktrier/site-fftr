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
