# Radxa Cubie A7S — Android BSP delta

Files changed or added in the Allwinner A733 (sun60iw2p1) Android BSP to bring up the Radxa Cubie A7S.

The source tree has no version control, so the delta was reconstructed from
file mtimes: the BSP was unpacked 2026-05-25 16:19–17:30, and everything below
was written after that. Build artifacts (`out/`, `longan/out/`, u-boot and GPU
module object trees, generated `include/config/**`, maven/gradle target dirs)
were excluded, as were Android flash images. Paths and timestamps are preserved.

## Android tree

| Path | Change |
|---|---|
| `device/softwinner/jupiter/a733-radxa-a7s/` | New board dir (forked from `a733-radxa-a7a` on 2026-05-25 18:45) |
| `device/softwinner/jupiter/AndroidProducts.mk` | Registers the new product |
| `device/softwinner/jupiter/a733_radxa_a7s.mk` | New product makefile |

Within the board dir, the files that diverge from `a733-radxa-a7a` are
`BoardConfig.mk`, `device-common.mk`, `input/config.mk`, `input/init.input.rc`,
`media/audio/auto_codec_paths.xml`, and the added `system/env.cfg`
(`input/gt9xxnew_ts.idc` was dropped).

## longan (BSP)

| Path | Change |
|---|---|
| `longan/device/config/chips/a733/configs/radxa_a7s/` | New board config dir (forked from `radxa_a7a` on 2026-05-25 18:44) — `board.dts`, `sys_config.fex`, `android13_arm64_defconfig`, `arisc.config`, dtbo set |
| `longan/bsp/drivers/clk/sunxi-ng/ccu_common.c` | Clock driver fix |
| `longan/build/mkkernel.sh` | Kernel image packing (2 MB DTB offset alignment) |
| `longan/build/mkcmd.sh` | Build driver |
| `longan/Android.mk` | `BUILD_LONGAN_IN_ANDROID` hook |
| `longan/.buildconfig` | Board selection from `./build.sh config` — generated and host-specific (absolute paths), so not included here; regenerate it with `./build.sh config` |

## Notes

- `linux-5.15/board.dts` is the real DT; `board.dts` at the board-config root is
  a symlink to it (preserved as a symlink).
- The `.bmp` bootlogo/warning assets and prebuilt `.dtbo` blobs are carried over
  from the forked board and are included so the config dir is complete.
- `longan/kernel/linux-5.15` itself is unmodified; the only kernel-side source
  change is in the out-of-tree `longan/bsp` overlay.
