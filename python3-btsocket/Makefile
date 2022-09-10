# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-btsocket
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PYPI_NAME:=btsocket
PKG_HASH:=6862250b7e0973d2beea9e49d3b5ced324d80e5003a0350856879e537ba777a8

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-btsocket
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=library for BlueZ Bluetooth Management API
  URL:=https://github.com/ukBaz/python-btsocket
  DEPENDS:= \
	+python3-asyncio \
	+python3-ctypes \
	+python3-logging
endef

define Package/python3-btsocket/description
  Python library to interact with the Bluez Bluetooth
  Management API communicating with the kernel using 
  a so-called Bluetooth Management sockets.
endef

$(eval $(call Py3Package,python3-btsocket))
$(eval $(call BuildPackage,python3-btsocket))
#$(eval $(call BuildPackage,python3-btsocket-src))
