# torpedo

Docker image with Tor and Privoxy on Alpine Linux for Raspberry Pi.

## Getting started

```
docker pull schopenhauer/torpedo
```

```
docker build -t torpedo .
docker run -d -p 8118:8118 -p 9050:9050 torpedo
```

```
curl --proxy localhost:8118 https://www.google.com
curl --socks5 localhost:9050 https://www.google.com
```

## Known issues

* When running in interactive mode, pressing Ctrl+C doesn't cleanly exit. For now, run it in detached mode (`-d`). Calling `docker stop` cleanly exits though.
* We're using `testing` versions of tor and runit in Alpine. Got to keep an eye on future builds, until those packages reach `main` in Alpine.

## Credits

This Docker image is inspired and powered by [easypi/alpine-arm](https://hub.docker.com/r/easypi/alpine-arm/) and [rdsubhas/tor-privoxy-alpine](https://hub.docker.com/r/rdsubhas/tor-privoxy-alpine/).
