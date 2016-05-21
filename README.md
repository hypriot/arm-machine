# arm-machine

This is an automated build for docker-machine on ARM.
This build clones the official repo [docker/machine](https://github.com/docker/machine) and generates an ARMv6 binary.

## Installation

You can find the DEB package for `docker-machine` in Hypriot's Schatzkiste. Add the repo if it isn't already added (newer versions of the HypriotOS SD image already have this entry).

### Add repo

```bash
sudo apt-get update
sudo apt-get install -y apt-transport-https
echo "deb https://packagecloud.io/Hypriot/Schatzkiste/debian/ wheezy main" | sudo tee /etc/apt/sources.list.d/hypriot.list
```

### Install or Update

```bash
sudo apt-get update
sudo apt-get install docker-machine
```

## Contributing

TBD
