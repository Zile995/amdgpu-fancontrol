#!/bin/bash

systemctl disable --now amdgpu-fancontrol.service
systemctl disable --now amdgpu-fancontrol-resume.service

rm /usr/bin/amdgpu-fancontrol
rm /etc/amdgpu-fancontrol.cfg
rm /usr/lib/systemd/system/amdgpu-fancontrol.service
rm /usr/lib/systemd/system/amdgpu-fancontrol-resume.service
