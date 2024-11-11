#!/bin/zsh

rmmod nvidia_modeset nvidia_uvm nvidia && echo "NVIDIA drivers removed" && modprobe -i vfio_pci vfio_pci_core vfio_iommu_type1 && echo "VFIO drivers added" && virsh nodedev-detach pci_0000_01_00_0 && echo "GPU detached (now vfio ready)" && echo "COMPLETED!"
