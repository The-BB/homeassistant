# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=bluetooth-data-tools
PKG_VERSION:=1.14.0
PKG_RELEASE:=1

PYPI_NAME:=bluetooth_data_tools
PKG_HASH:=9911451842a32ae380ba21ae85e78b0ecb2c1d6d52b901bcd9eaee8052c1b25c

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
  DEPENDS:=+python3-logging
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-bluetooth-data-tools/description
  Tools for converting bluetooth data and packets.
endef

$(eval $(call Py3Package,python3-bluetooth-data-tools))
$(eval $(call BuildPackage,python3-bluetooth-data-tools))
#$(eval $(call BuildPackage,python3-bluetooth-data-tools-src))
