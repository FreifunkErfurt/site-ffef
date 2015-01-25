#### How to build the Freifunk Erfurt Firmware
    
    git clone git://github.com/freifunk-gluon/gluon.git            # Get the official Gluon repository
    cd gluon
    git checkout v201x.x					   # Switch to Gluon release if not master (see below)
    git clone git://github.com/freifunkerfurt/site-ffef.git site   # Get the Freifunk Erfurt site repository
    make update                                                    # Get other repositories used by Gluon
    make                                                           # Build Gluon

Please see [the official Gluon repository](https://github.com/freifunk-gluon/gluon) for an in-depth explanation of the build process.

#### Gluon releases used for specific Erfurt Freifunk Firmware builds

- 0.7: master
- 0.6: v2014.3.1
- 0.5: v2014.3
