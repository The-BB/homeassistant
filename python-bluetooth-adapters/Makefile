# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=bluetooth-adapters
PKG_VERSION:=0.18.0
PKG_RELEASE:=1

PYPI_NAME:=bluetooth_adapters
PKG_HASH:=d2ff76ca3ee7aa27df18e0c233e36e16251bd92225d0c1d5712f07360f607176

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
	+python3-asyncio \
	+python3-ctypes \
	+python3-logging \
	+python3-aiooui \
	+python3-bleak \
	+python3-dbus-fast \
	+python3-logging \
	+python3-usb-devices
endef

define Package/python3-bluetooth-adapters/description
  Tools to enumerate and find Bluetooth Adapters.
endef

$(eval $(call Py3Package,python3-bluetooth-adapters))
$(eval $(call BuildPackage,python3-bluetooth-adapters))
#$(eval $(call BuildPackage,python3-bluetooth-adapters-src))
