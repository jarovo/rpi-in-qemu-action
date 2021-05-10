# rpi-in-qemu-github-action
Runs an executable entry-point mounted in an emulated RPI QEMU VM.

```
name: GitHub Actions Demo
on: [push, pull_request]
jobs:
  build_docker_image:
    runs-on: ubuntu-latest
    steps:
      - run: echo "The job was automatically triggered by a ${{ github.event_name }} event."
      - run: echo "This job is now running on a ${{ runner.os }} server hosted by GitHub!"
      - run: echo "The name of your branch is ${{ github.ref }} and your repository is ${{ github.repository }}."
      - name: Start VM
        uses: jaryn/rpi-in-qemu-action@v1
        with:
          fsdev_src_dir: ${{ github.workspace }}
          ssh_command: mount -t 9p -o trans=virtio,version=9p2000.L rpi_9p_dev /mnt; ls /mnt
```