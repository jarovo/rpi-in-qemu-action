FROM fedora
COPY . /rpi-in-qemu-github-action
RUN sudo dnf install -y unzip qemu-system-arm libguestfs-tools-c
ENTRYPOINT /rpi-in-qemu-github-action/entrypoint.sh