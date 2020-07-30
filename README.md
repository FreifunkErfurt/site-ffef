# Freifunk Erfurt - Firmware builds

### How to build the Gluon based Freifunk Erfurt Firmware

#### GCC to Version 9
The actual gluon version doesn't work with gcc in version 10. So this steps work for gcc to version 9.

``` bash
git clone git://github.com/freifunk-gluon/gluon.git # Get the official Gluon repository
cd gluon
git checkout v201x.x # Switch to Gluon release if not master (see below)
git clone git://github.com/freifunkerfurt/site-ffef.git site # Get the Freifunk Erfurt site repository
cd site
git checkout v201x.x # Switch to site config release if not master (see below or tags)
cd ..
make update # Get other repositories used by Gluon
make GLUON_TARGET=target # Build Gluon for a target
```

#### GCC with Version 10

You need to install docker for on your machine.

``` bash
git clone git://github.com/freifunk-gluon/gluon.git # Get the official Gluon repository
cd gluon
git checkout v201x.x.x # Switch to Gluon release if not master (see below)
git clone git://github.com/koleesch/site-ffef.git site # Get the Freifunk Erfurt site repository
cd site
git checkout trunk # Switch to site config release if not master (see below or tags)
cd ..
docker build -t gluon:v20xx.x.x contrib # build a docker container with the specific gluon version
docker run -it --rm -v $(pwd):/gluon gluon:v20xx.x.x # starts the docker container
make update # Get other repositories used by Gluon
make GLUON_TARGET=target # Build Gluon for a target
```
#### Targets

To see a complete list of supported targets, call

```bash
make
```

without setting GLUON_TARGET.

For further informations about supported hardware and targets please see [Supported Devices & Architectures ](http://gluon.readthedocs.io/en/latest/index.html#supported-devices-architectures) in the official Gluon documentation.

#### Additional informations

Please see [the official Gluon documentation](http://gluon.readthedocs.io/en/latest/user/getting_started.html) for a detailed explanation of the build process. You can also consult [the official Gluon repository](https://github.com/freifunk-gluon/gluon) for additional informations.

### Gluon releases used for specific Freifunk Erfurt Firmware builds

- 1.6.0: v2019.1.x (lauffähiges Version nach Upgrade von 1.3.2)
- 1.5.0: v2107.1.3
- 1.3.2: v2016.2.7
- 1.3.1: v2016.2.1
- 1.3.0: v2016.2
- 1.2:   v2016.1
- 1.1:   v2015.1.2 (build with BROKEN=1)
- 1.0:   v2015.1.2
- 0.7:   v2014.4
- 0.6:   v2014.3.1
- 0.5:   v2014.3
