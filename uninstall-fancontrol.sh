#!/bin/bash

# Stop and disable systemd services
systemctl disable --now amdgpu-fancontrol.path
systemctl stop amdgpu-fancontrol.service
systemctl disable --now amdgpu-fancontrol-resume.service

# Remove files
rm -vf /usr/bin/amdgpu-fancontrol
rm -vf /etc/amdgpu-fancontrol.cfg
rm -vf /usr/lib/systemd/system/amdgpu-fancontrol*.{path,service}
