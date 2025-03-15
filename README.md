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
- Try to pull a fresher image
- Mount the current directory inside the container!
    - Do not run this command from your home directory, as Fontra will try to `chown` it
        - Then fail, thanks to Podman's sensible security policies!
- Bind to port 8888 on the host
- Remove itself after it exits

---

To run the container with default parameters, do:

```sh
podman container runlabel run ghcr.io/5310/fontra