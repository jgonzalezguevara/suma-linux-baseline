#!/bin/bash

echo "================================="
echo "SUMA Linux Baseline Validation"
echo "================================="

echo
echo "[SSH]"
grep -E "PermitRootLogin|PasswordAuthentication" /etc/ssh/sshd_config

echo
echo "[SERVICES]"
systemctl is-enabled sshd 2>/dev/null
systemctl is-enabled chronyd 2>/dev/null
systemctl is-enabled auditd 2>/dev/null

echo
echo "[PACKAGES]"
for pkg in vim curl wget rsync chrony audit; do
    rpm -q "$pkg" 2>/dev/null || dpkg -s "$pkg" 2>/dev/null | grep Status
done

echo
echo "Validation finished."
