# Caddy and other stuff

## DNS setup with dnsmasq

For dnsmasq running as a daemon on Merlin ASUS firmware edit `/jffs/configs/dnsmasq.conf/add`:
(On "regular" linux, it's probably located at `/etc/dnsmasq.conf`.)

```bash
address=/.lab.home/192.x.x.x
```

## Cockpit config

For Cockpit running under systemd on Fedora Server

Edit `/etc/cockpit/cockpit.conf`:

```conf
[WebService]
Origins = https://cockpit.lab.home
AllowUnencrypted = true
```

## Home assistant

For Home Assitant running on Raspberry 4 edit `/root/config.configuration.yaml`:

```yaml
http:
    use_x_forwarded_for: true
    trusted_proxies: 192.x.x.x 
```
