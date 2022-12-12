# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-bluetooth-data-tools
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PYPI_NAME:=bluetooth_data_tools
PKG_HASH:=b83df473166e6ffc568f092492e977a4c2442039b896494b9981d9a16ce2f513

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bluetooth-data-tools
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Tools for converting bluetooth data and packets
  URL:=https://github.com/Bluetooth-Devices/bluetooth-data-tools
  DEPENDS:= \
	+python3-logging
endef

define Package/python3-bluetooth-data-tools/description
  Tools for converting bluetooth data and packets.
endef

$(eval $(call Py3Package,python3-bluetooth-data-tools))
$(eval $(call BuildPackage,python3-bluetooth-data-tools))
#$(eval $(call BuildPackage,python3-bluetooth-data-tools-src))
