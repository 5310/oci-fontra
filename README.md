# fontra

# rocm-base

> This is an Alpine based container image for Google's Fontra font editor; because Google can't be bothered to provide any binary distributions for Linux

---

Packages from the [rocm/dev-ubuntu:22.04](https://github.com/googlefonts/fontra) image. 

Built for and tested with rootless [Podman](https://podman.io/).

---

To run the container with default parameters, do:

```sh
podman container runlabel run ghcr.io/5310/fontra
```

To see what the required parameters are in order to write your own run command, print out a runlabel like so:

```sh
podman container runlabel --display run ghcr.io/5310/fontra
```

By default, the container will:
- Mount the current directory to `/root/volume` inside the container
- Bind to port 8888 on the host
- And remove itself after it is quit

---

Quit the container with `ctrl+q` from its console. 

Or, you know, kill it, because instability is the name of the game!