# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=bluetooth-data-tools
PKG_VERSION:=1.6.1
PKG_RELEASE:=1

PYPI_NAME:=bluetooth_data_tools
PKG_HASH:=ee46a4044aada776542f00100403ff7b6785897ffcbd964fd5b7e9712aa78cda

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-poetry-core/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bluetooth-data-tools
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Tools for converting bluetooth data and packets
  URL:=https://github.com/Bluetooth-Devices/bluetooth-data-tools
  DEPENDS:=+libstdcpp +python3-distutils +python3-logging
endef

define Package/python3-bluetooth-data-tools/description
  Tools for converting bluetooth data and packets.
endef

$(eval $(call Py3Package,python3-bluetooth-data-tools))
$(eval $(call BuildPackage,python3-bluetooth-data-tools))
#$(eval $(call BuildPackage,python3-bluetooth-data-tools-src))
