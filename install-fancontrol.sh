#!/bin/bash

cp amdgpu-fancontrol /usr/bin/
cp services/amdgpu-fancontrol.service /usr/lib/systemd/system/
cp services/amdgpu-fancontrol-resume.service /usr/lib/systemd/system/
cp config/amdgpu-fancontrol.cfg /etc/amdgpu-fancontrol.cfg

systemctl enable --now amdgpu-fancontrol.service
systemctl enable amdgpu-fancontrol-resume.service
