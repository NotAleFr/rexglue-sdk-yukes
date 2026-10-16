# Regression for the in-place FLOAT16_4 pack used by interleaved mesh UVs.
# The source must be read completely before any destination lane is changed.
# Synthetic instructions and values; no game data.

test_vpkd3d128_float16_4_alias_shift2:
  #_ REGISTER_IN v3 [3F000000, BF000000, 3F800000, BF800000]
  # vpkd3d128 v3, v3, 5, 2, 2
  .long 0x18761E90
  blr
  #_ REGISTER_OUT v3 [3800B800, 3C00BC00, 00000000, 00000000]

test_vpkd3d128_float16_4_alias_shift0:
  #_ REGISTER_IN v3 [3F000000, BF000000, 3F800000, BF800000]
  # vpkd3d128 v3, v3, 5, 2, 0
  .long 0x18761E10
  blr
  #_ REGISTER_OUT v3 [00000000, 00000000, 3800B800, 3C00BC00]
