# CasualsKernelProject initialization script
# Pieces taken from @anarkia1976, @franciscofranco, @frap129, @flar2, @AuxXxilium and @@nathanchance

on boot
  # GPU min init
  chown root root /sys/kernel/gpu/gpu_min_clock
  chmod 666 /sys/kernel/gpu/gpu_min_clock
  write /sys/kernel/gpu 156
  chmod 644 /sys/kernel/gpu/gpu_min_clock
