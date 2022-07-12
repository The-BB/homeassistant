# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyroute2-ipdb
PKG_VERSION:=0.6.13
PKG_RELEASE:=1

PYPI_NAME:=pyroute2.ipdb
PKG_HASH:=bbbbb75d13be96e4549cf70eb94fd70b2e1736ea301ac6b683f56aa1acd84d5a

PKG_LICENSE:=Apache-2.0 GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE.Apache.v2 LICENSE.GPL.v2

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyroute2-ipdb
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Netlink library: IPDB module
  URL:=https://github.com/svinota/pyroute2
  DEPENDS:= \
	+python3-logging \
	+python3-pyroute2-core
endef

define Package/python3-pyroute2-ipdb/description
  IPDB module is approaching its end of life.
endef

$(eval $(call Py3Package,python3-pyroute2-ipdb))
$(eval $(call BuildPackage,python3-pyroute2-ipdb))
#$(eval $(call BuildPackage,python3-pyroute2-ipdb-src))
