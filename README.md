debos samples for amd64 vms, inspired on:

https://gitlab.apertis.org/sjoerd/apertis-workshop/
https://github.com/go-debos/debos-recipes

basic usage:

sudo debos testing-amd64-deboostrap.yaml
sudo debos testing-amd64-create-image.yaml
sudo kvm -cpu host -smp 1 -m 2G \
-net nic -net user,hostfwd=tcp::60022-:22 \
-drive if=pflash,format=raw,readonly=on,file=/usr/share/ovmf/OVMF.fd \
-drive if=virtio,format=raw,cache=unsafe,file=testing-amd64.img \
-nographic

(this forwards local port 60022 to guest's 22 )

the ssh/ dir is a overlay to inject the ssh key:
ssh/home/user/.ssh/authorized_keys
