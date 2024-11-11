#!/bin/zsh

virsh nodedev-reattach pci_0000_01_00_0 && echo "GPU reattached (now host ready)" && rmmod vfio_pci vfio_pci_core vfio_iommu_type1 && echo "VFIO drivers removed" && modprobe -i nvidia_modeset nvidia_uvm nvidia && echo "NVIDIA drivers added" && echo "COMPLETED!"
