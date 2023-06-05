# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=bluetooth-adapters
PKG_VERSION:=0.15.3
PKG_RELEASE:=2

PYPI_NAME:=bluetooth_adapters
PKG_HASH:=955c8cf4b597a84668fe41993d8f21d1359f24d88c5bbe05b895981feeb19a8b

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bluetooth-adapters
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Tools to enumerate and find Bluetooth Adapters
  URL:=https://github.com/bluetooth-devices/bluetooth-adapters
  DEPENDS:= \
	+python3-aiohttp \
	+python3-async-timeout \
	+python3-asyncio \
	+python3-bleak \
	+python3-dbus-fast \
	+python3-logging \
	+python3-mac-vendor-lookup \
	+python3-usb-devices
endef

define Package/python3-bluetooth-adapters/description
  Tools to enumerate and find Bluetooth Adapters.
endef

$(eval $(call Py3Package,python3-bluetooth-adapters))
$(eval $(call BuildPackage,python3-bluetooth-adapters))
#$(eval $(call BuildPackage,python3-bluetooth-adapters-src))
