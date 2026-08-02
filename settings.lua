local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoscarbon-fullerenes-nanotubes",
  setting_type = "startup",
  default_value = true,
  order = "a[settings]-a[fullerenes-nanotubes]"
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoscarbon-carbon-black",
  setting_type = "startup",
  default_value = false,
  order = "a[settings]-b[carbon-black]"
} :commit()

khaoslib_setting:load {
  type = "bool-setting",
  name = "khaoscarbon-rough-diamond",
  setting_type = "startup",
  default_value = false,
  order = "a[settings]-c[rough-diamond]"
} :commit()
