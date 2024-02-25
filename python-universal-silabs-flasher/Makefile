# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=universal-silabs-flasher
PKG_VERSION:=0.0.18
PKG_RELEASE:=1

PYPI_NAME:=universal-silabs-flasher
PKG_HASH:=7f088c0149b26ca75e0c03fb2ed43d3a7545463a50c1cb272abd6ab917c9f30a

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-universal-silabs-flasher
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Tool to flash firmware
  URL:=https://github.com/NabuCasa/universal-silabs-flasher
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-urllib \
	+python3-async-timeout \
	+python3-bellows \
	+python3-click \
	+python3-coloredlogs \
	+python3-crc \
	+python3-gpiod \
	+python3-typing-extensions \
	+python3-zigpy
endef

define Package/python3-universal-silabs-flasher/description
  Automatically communicates with radios over CPC, EZSP, or Spinel to
  enter the bootloader and then flashes a firmware image with XMODEM.
endef

$(eval $(call Py3Package,python3-universal-silabs-flasher))
$(eval $(call BuildPackage,python3-universal-silabs-flasher))
#$(eval $(call BuildPackage,python3-universal-silabs-flasher-src))
