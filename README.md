# Docker for MacOS
**Experimental**

Docker Desktop has become really bloated.
This is a thin frontend to docker running inside a VM.


## Installation

Using VirtualBox

1. Create virtual machine named "docker".
2. Install [Alpine](https://wiki.alpinelinux.org/wiki/Installation).
3. Setup networking: make sure guest is accessible from the host.
4. Share host file system root. Set `Folder name` to `dockerhome`.
5. Make guest accessible via ssh from the host; add your public key to `/root/.ssh/authorized_keys`
6. Run installation script in the guest.
