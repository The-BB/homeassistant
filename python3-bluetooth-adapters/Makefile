# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-bluetooth-adapters
PKG_VERSION:=0.7.0
PKG_RELEASE:=1

PYPI_NAME:=bluetooth_adapters
PKG_HASH:=33cea32ddf635dc37285b5084839bd203a982c8143b4c7b07bf501b7d7e0a907

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

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
	+python3-async-timeout \
	+python3-asyncio \
	+python3-dbus-fast \
	+python3-logging
endef

define Package/python3-bluetooth-adapters/description
  Tools to enumerate and find Bluetooth Adapters.
endef

$(eval $(call Py3Package,python3-bluetooth-adapters))
$(eval $(call BuildPackage,python3-bluetooth-adapters))
#$(eval $(call BuildPackage,python3-bluetooth-adapters-src))
