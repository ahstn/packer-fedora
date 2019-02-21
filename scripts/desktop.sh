#!/bin/bash -eux

dnf -y groupinstall "Basic Desktop"
dnf -y install gnome-classic-session gnome-terminal \
    nautilus-open-terminal control-center liberation-mono-fonts

# We need to create artifact to trigger open-vm-tools-desktop install
if [ "$PACKER_BUILDER_TYPE" = "vmware-iso" ]; then
    sudo touch /etc/vmware_desktop
elif [ "$PACKER_BUILDER_TYPE" = "virtualbox-iso" ]; then
    sudo touch /etc/virtualbox_desktop
fi
