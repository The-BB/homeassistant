# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=bluetooth-data-tools
PKG_VERSION:=1.19.0
PKG_RELEASE:=1

PYPI_NAME:=bluetooth_data_tools
PKG_HASH:=5b58349126efbb38d61222267cf85bf1766f832cc5744a59e70a1a2653e477d9

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bluetooth-data-tools
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Tools for converting bluetooth data and packets
  URL:=https://github.com/Bluetooth-Devices/bluetooth-data-tools
  DEPENDS:=+python3-cryptography +python3-logging
endef

define Package/python3-bluetooth-data-tools/description
  Tools for converting bluetooth data and packets.
endef

$(eval $(call Py3Package,python3-bluetooth-data-tools))
$(eval $(call BuildPackage,python3-bluetooth-data-tools))
#$(eval $(call BuildPackage,python3-bluetooth-data-tools-src))
