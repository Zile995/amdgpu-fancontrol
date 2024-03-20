#!/bin/bash

# Copy files
cp -v amdgpu-fancontrol /usr/bin/
cp -v config/amdgpu-fancontrol.cfg /etc/amdgpu-fancontrol.cfg
cp -v services/amdgpu-fancontrol*.{path,service} /usr/lib/systemd/system/

# Enable systemd services
systemctl enable --now amdgpu-fancontrol.path
systemctl enable amdgpu-fancontrol-resume.service
