# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyroute2-ethtool
PKG_VERSION:=0.6.13
PKG_RELEASE:=1

PYPI_NAME:=pyroute2.ethtool
PKG_HASH:=0a687fea0fcd77d9074c7c18ba35d9b9f70e4217ebe68a687e200408473a3bd4

PKG_LICENSE:=Apache-2.0 GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE.Apache.v2 LICENSE.GPL.v2

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyroute2-ethtool
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Netlink library: ethtool
  URL:=https://github.com/svinota/pyroute2
  DEPENDS:= \
	+python3-ctypes \
	+python3-logging
endef

define Package/python3-pyroute2-ethtool/description
  This module provides Ethtool.
endef

$(eval $(call Py3Package,python3-pyroute2-ethtool))
$(eval $(call BuildPackage,python3-pyroute2-ethtool))
#$(eval $(call BuildPackage,python3-pyroute2-ethtool-src))
