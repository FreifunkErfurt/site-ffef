GLUON_FEATURES := \
	respondd \
	autoupdater \
	config-mode-autoupdater \
	config-mode-contact-info \
	config-mode-core \
	config-mode-geo-location \
	config-mode-hostname \
	config-mode-mesh-vpn \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	web-admin \
	web-autoupdater \
	web-network \
	web-wifi-config \
	mesh-batman-adv-14 \
	mesh-batman-adv-15 \
	mesh-vpn-fastd \
	radvd \
	setup-mode \
	status-page
	
GLUON_PACKAGES := \
	iptables \
	haveged \
	iwinfo

DEFAULT_GLUON_RELEASE := 1.7.0

# Allow Multidomains
GLUON_MULTIDOMAIN=1

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

GLUON_LANGS ?= de en

# Build images to update from EU-specific firmware (TP-Link)
GLUON_REGION := eu

# Build images with ath10k-based drivers for IBSS (Ad-Hoc)
GLUON_ATH10K_MESH := 11s

# Build for deprecated devices
# possible values= 0 or full
GLUON_DEPRECATED=full