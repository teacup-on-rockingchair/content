#!/bin/bash
#
# profiles = xccdf_org.ssgproject.content_profile_ospp

sed -i "/^X11Forwarding.*/d" /etc/ssh/sshd_config
