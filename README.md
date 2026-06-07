# Prism Kernel AnyKernel3

AnyKernel3 package repo for Prism Kernel on ASUS Zenfone Max Pro M2.

## Target

- Device: ASUS Zenfone Max Pro M2
- Codenames: `X01BD`, `X01BDA`, `ASUS_X01BD`, `ASUS_X01BDA`
- Boot partition: `/dev/block/by-name/boot`
- Kernel image expected in zip root: `Image.gz-dtb`

## Packaging

Place the built kernel image in this repo root, then create a flashable zip:

```bash
zip -r9 Prism-Kernel-X01BD-AnyKernel3.zip * -x .git README.md "*placeholder"
```

`anykernel.sh` is intentionally minimal. It replaces the kernel image and preserves the existing ramdisk. Add ramdisk patches only when they are device-specific and tested.

The original AnyKernel3 license remains in `LICENSE`.
