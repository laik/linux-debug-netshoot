bpftrace.

```
sudo timeout 30 bpftrace -e '
profile:hz:99 /pid == 37552/ {
  @[ustack] = count();
}
END {
  print(@);
}' > bpftrace.out

./stackcollapse-bpftrace.pl bpftrace.out > out.folded
./flamegraph.pl out.folded > flame.svg

```