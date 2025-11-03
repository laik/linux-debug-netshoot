docker run --rm -it \
  --privileged \
  --pid=host \
  --network=host \
  -v /sys:/sys \
  -v /sys/kernel/debug:/sys/kernel/debug \
  -v /sys/fs/bpf:/sys/fs/bpf \
  laiks/linux-debug-netshoot:v1