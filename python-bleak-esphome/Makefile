# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=bleak-esphome
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PYPI_NAME:=bleak_esphome
PKG_HASH:=56bc0ec1d70f478b05ebe618337d0c20d5d8282c366e72627ecac66a2024e407

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bleak-esphome
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Bleak backend of ESPHome
  URL:=https://github.com/bluetooth-devices/bleak-esphome
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-uuid \
	+python3-aioesphomeapi \
	+python3-bleak \
	+python3-bluetooth-data-tools \
	+python3-habluetooth \
	+python3-lru-dict
endef

define Package/python3-bleak-esphome/description
  Bleak backend of ESPHome.
endef

$(eval $(call Py3Package,python3-bleak-esphome))
$(eval $(call BuildPackage,python3-bleak-esphome))
#$(eval $(call BuildPackage,python3-bleak-esphome-src))
