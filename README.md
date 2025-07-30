# Gree Dummy TLS Server [HA ADDON]

A dummy server that will prevent Gree AC units from phoning home. 

This is based on @joserebelo’s work but has been repackaged as a Home Assistant add-on, so you don’t need to run a separate instance or server.

<https://codeberg.org/joserebelo/gree-dummy-tls-server>

# Requirements (copy-pasted from joserebelo's repo)

You need to setup a DNS rewrite for all *.gree.com DNS queries in your network, pointing to this server.

While this should not be needed, without it the devices will sometimes get stuck in a dns query loop to some *.gree.com dns entries that do not exist, especially if the connection to this server is lost. It's unclear what triggers this, since this behavior is not reproducible with the official app, which points to some potential bug in this server's implementation.

You can then use any of the aforementioned *.gree.com hostname when pairing your device to the wifi network, or your own DNS entry that points to the server.