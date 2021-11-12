# Vagrant Ansible playground

Ansible environment for learning purposes.

To see a list of vagrant command options, check it out on [Vagrant small cheat sheet](https://site-nogsantos.web.app/posts/vagrant/)

## Troubleshooting

When running, some errors can occur, it will depend on your system and of the versions of the tools.

### ERROR umount: /mnt: not mounted

Update `vagrant-vbguest`.

```bash
vagrant plugin uninstall vagrant-vbguest
vagrant plugin install vagrant-vbguest --plugin-version 0.30 # check the last version at https://github.com/dotless-de/vagrant-vbguest
```

### Error message given during initialization: Unable to resolve dependency

```bash
vagrant plugin update
```

### Vagrant sshfs unmounted

```bash
vagrant sshsf <target>
```

### Fuse sshfs

ERROR: Internal error. Report this as a bug. Invalid: sshfs

fedora

```bash
sudo dnf install fuse-sshfs
```

### Ip Range

ERROR:
```
The IP address configured for the host-only network is not within the
allowed ranges. Please update the address used to be within the allowed
ranges and run the command again.

  Address: 172.16.0.100
  Ranges: 192.168.56.0/21

Valid ranges can be modified in the /etc/vbox/networks.conf file. For
more information including valid format see:

  https://www.virtualbox.org/manual/ch06.html#network_hostonly
```

Change the ip range in `boxes.yaml`
