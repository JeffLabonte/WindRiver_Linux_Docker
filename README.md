# WindRiver_Linux_Docker
Docker environment to work with WindRiver Linux. It is useful to me on Fedora 31


## Getting Started

### Create a directory to hold your build

```bash
mkdir windriver
```

### Build or pull the Docker Image

Build your own image

```bash
docker build -t <Your DockerHub Username>/windriver_base .
```

Get my image

```bash
docker pull grimsleepless/windriver_base
```

If you have decided to build your own image, replace grimsleepless with your username

### Run the image

```bash
docker run -ti --rm --name WindRiver_builder -v $(pwd)/windriver:/home/yocto grimsleepless/windriver_base
```

And voilà!


