# OpenVPN

Build:

```console
docker build -t openvpn \
  --build-arg USER_UID=`id -u` \
  --build-arg USER_GID=`id -g` \
  --build-arg USER_NAME=`id -un` \
  .
```

Configure:

Create configuration file (e.g. `sample.conf`) in `config` directory.

Run:

Run `openvpn.sh` command with your config name

```console
./openvpn.sh sample.conf
```
