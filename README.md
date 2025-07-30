# Gree Dummy TLS Server [HA ADDON]

A dummy server that will allow you to use your Gree AC units with them phoning home. Pleae follow the instructions below.
This is based on @joserebelo’s work but has been repackaged as a Home Assistant add-on, so you don’t need to run a separate instance or server.

<https://codeberg.org/joserebelo/gree-dummy-tls-server>

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https://github.com/simonepsp/ha-gree-dummy-server/)

# Requirements (copy-pasted from joserebelo's repo)

You need to setup a DNS rewrite for all *.gree.com DNS queries in your network, pointing to this server.

While this should not be needed, without it the devices will sometimes get stuck in a dns query loop to some *.gree.com dns entries that do not exist, especially if the connection to this server is lost. It's unclear what triggers this, since this behavior is not reproducible with the official app, which points to some potential bug in this server's implementation.

You can then use any of the aforementioned *.gree.com hostname when pairing your device to the wifi network, or your own DNS entry that points to the server.


# Ubiquiti example
On the Unifi network interface you can easily create a DNS entry *.gree.com pointing at your HA instance (192.168.1.4 in my case). You won't need to set the DOMAIN_NAME in the addon config.
After that, check if the Gree Wifi devices are correctly communicating with your dummy server, by opening addon's Log page
<img width="1766" height="544" alt="CleanShot 2025-07-30 at 14 38 51@2x" src="https://github.com/user-attachments/assets/4ce1b5a3-b869-4744-9074-66a58d80b208" />
