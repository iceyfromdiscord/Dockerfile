# Use the official dockur/windows image as the base
FROM dockurr/windows:latest

# Define the Windows version to download and install automatically
# Options: win11, win10, ltsc11, win7, 2022, 2019, etc.
ENV VERSION="win10"

# Allocate hardware resources (adjust based on your host machine)
ENV RAM_SIZE="32G"
ENV CPU_CORES="16"
ENV DISK_SIZE="128G"

# Set up the default Windows user credentials
ENV USERNAME="test"
ENV PASSWORD="balls1029"

# Expose the ports: 
# 8006 is the web-based GUI (noVNC HTML5 viewer)
# 3389 is the standard Windows Remote Desktop (RDP)
EXPOSE 8006 3389

# (Optional) If you have a custom script or installer you want to run after Windows boots, 
# you can copy an 'install.bat' into the /oem directory:
# COPY install.bat /oem/
