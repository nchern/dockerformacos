# Docker for MacOS
**Experimental**

Docker Desktop has become really bloated.
This is a thin frontend to docker running inside a VM.

## Installation

Using VirtualBox

1. Create virtual machine named "docker".
2. Setup networking: make sure guest is accessible from the host.
   The easiest is to setup [Bridged networking](https://www.virtualbox.org/manual/ch06.html#:~:text=not%20below%201024.-,6.4.%C2%A0Network%20Address%20Translation%20Service,-The%20Network%20Address)
3. Install [Alpine](https://wiki.alpinelinux.org/wiki/Installation).
   Make sure `sshd` is installed and enabled; Enable root login in config: `PermitRootLogin yes`
4. Share host file system root: `docker-vim create`
5. Initialize the VM: `docker-vim init <vm-ip>`
   Note: at this stage you need to **manually** figure out and provide `<vm-ip>`.
   The IP is not available before guest additions are installed, up and running.
   This step installs all packages including guest additions to the VM.
