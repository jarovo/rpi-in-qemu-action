FROM fedora
COPY . /rpi-in-qemu-action
RUN sudo dnf install -y coreutils unzip qemu-system-arm libguestfs-tools-c openssh-clients
ENTRYPOINT /rpi-in-qemu-action/entrypoint.sh
