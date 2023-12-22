# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=universal-silabs-flasher
PKG_VERSION:=0.0.15
PKG_RELEASE:=1

PYPI_NAME:=universal-silabs-flasher
PKG_HASH:=665ae4ae6945ffe6366ce5bc8cdd035dcb4ed73b73b9286886ab0f3079f79eab

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
