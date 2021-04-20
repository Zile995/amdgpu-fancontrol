#!/bin/bash

chmod +x amdgpu-fancontrol
cp amdgpu-fancontrol /usr/bin/
cp amdgpu-fancontrol.service /usr/lib/systemd/system/
cp etc-amdgpu-fancontrol.cfg /etc/amdgpu-fancontrol.cfg

cat >>/etc/systemd/system/root-resume.service <<EOF
[Unit]
Description=Local system resume actions
After=suspend.target

[Service]
Type=simple
ExecStart=/usr/bin/systemctl restart amdgpu-fancontrol.service

[Install]
WantedBy=suspend.target
EOF

systemctl enable --now amdgpu-fancontrol.service
systemctl enable root-resume.service
