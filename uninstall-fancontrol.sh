#!/bin/bash

systemctl stop amdgpu-fancontrol.service
systemctl stop root-resume.service
systemctl disable amdgpu-fancontrol.service
systemctl disable root-resume.service

rm /usr/bin/amdgpu-fancontrol
rm /etc/amdgpu-fancontrol.cfg
rm /usr/lib/systemd/system/amdgpu-fancontrol.service
rm /etc/systemd/system/root-resume.service
