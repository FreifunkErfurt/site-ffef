GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-autoupdater \
	gluon-config-mode-hostname \
	gluon-config-mode-autoupdater \
	gluon-config-mode-mesh-vpn \
	gluon-config-mode-geo-location \
	gluon-config-mode-core \
	gluon-config-mode-contact-info \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-wifi-config \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-respondd \
	gluon-setup-mode \
	gluon-status-page \
	iwinfo \
	iptables \
	haveged

DEFAULT_GLUON_RELEASE := 0.7~exp$(shell date '+%Y%m%d-%H')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

GLUON_PRIORITY ?= 0

GLUON_LANGS ?=en de
