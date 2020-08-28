GLUON_FEATURES := \
	alfred \
	autoupdater \
	config-mode-domain-select \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-source-filter \
	mesh-batman-adv-14 \
	mesh-batman-adv-15 \
	mesh-vpn-fastd \
	radvd \
	respondd \
	status-page \
	web-advanced \
	web-private-wifi \
	web-wizard
	
# musste raus um erst mal eine Version zu erstellen
#cconfig-mode-geo-location-osm \
	
GLUON_SITE_PACKAGES := \
	haveged \
	iwinfo \
	respondd-module-airtime

DEFAULT_GLUON_RELEASE := 1.7.0

# Allow Multidomains
GLUON_MULTIDOMAIN=1

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 14

GLUON_LANGS ?= de en

# Build images to update from EU-specific firmware (TP-Link)
GLUON_REGION := eu

# Build images with ath10k-based drivers for IBSS (Ad-Hoc)
GLUON_ATH10K_MESH := ibss

# Build for deprecated devices
# possible values= 0 or full
GLUON_DEPRECATED=full