# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-bluetooth-adapters
PKG_VERSION:=0.1.3
PKG_RELEASE:=1

PYPI_NAME:=bluetooth-adapters
PKG_HASH:=1c2f2b12c19b737b9d50bdcca7d2c2f33db726e7e0ed390c34fd134669ab9134

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
	+python3-asyncio \
	+python3-logging
endef

define Package/python3-bluetooth-adapters/description
  Tools to enumerate and find Bluetooth Adapters.
endef

$(eval $(call Py3Package,python3-bluetooth-adapters))
$(eval $(call BuildPackage,python3-bluetooth-adapters))
#$(eval $(call BuildPackage,python3-bluetooth-adapters-src))
