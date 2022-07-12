# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyroute2-ipset
PKG_VERSION:=0.6.13
PKG_RELEASE:=1

PYPI_NAME:=pyroute2.ipset
PKG_HASH:=28a254f622a18976d0683603d5aefda5ab7c8528fa9e36beb85bce52026f7866

PKG_LICENSE:=Apache-2.0 GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE.Apache.v2 LICENSE.GPL.v2

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyroute2-ipset
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Netlink library: ipset
  URL:=https://github.com/svinota/pyroute2
  DEPENDS:= \
	+python3-pyroute2-core
endef

define Package/python3-pyroute2-ipset/description
  This module provides IPSet and WiSet classes.
endef

$(eval $(call Py3Package,python3-pyroute2-ipset))
$(eval $(call BuildPackage,python3-pyroute2-ipset))
#$(eval $(call BuildPackage,python3-pyroute2-ipset-src))
