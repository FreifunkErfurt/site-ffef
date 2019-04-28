# Freifunk Erfurt - Firmware builds

### How to build the Gluon based Freifunk Erfurt Firmware

    git clone git://github.com/freifunk-gluon/gluon.git            # Get the official Gluon repository
    cd gluon
    git checkout v201x.x                                           # Switch to Gluon release if not master (see below)
    git clone git://github.com/freifunkerfurt/site-ffef.git site   # Get the Freifunk Erfurt site repository
    cd site
    git checkout v201x.x                                           # Switch to site config release if not master (see below or tags)
    cd ..
    make update                                                    # Get other repositories used by Gluon
    make GLUON_TARGET=target                                       # Build Gluon for a target

#### Targets

To see a complete list of supported targets, call

    make

without setting GLUON_TARGET.

For further informations about supported hardware and targets please see [Supported Devices & Architectures ](http://gluon.readthedocs.io/en/latest/index.html#supported-devices-architectures) in the official Gluon documentation.

#### Additional informations

Please see [the official Gluon documentation](http://gluon.readthedocs.io/en/latest/user/getting_started.html) for a detailed explanation of the build process. You can also consult [the official Gluon repository](https://github.com/freifunk-gluon/gluon) for additional informations.

### Gluon releases used for specific Freifunk Erfurt Firmware builds

- 1.3: v2016.2
- 1.2: v2016.1
- 1.1: v2015.1.2 (build with BROKEN=1)
- 1.0: v2015.1.2
- 0.7: v2014.4
- 0.6: v2014.3.1
- 0.5: v2014.3
