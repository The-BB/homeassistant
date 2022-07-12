# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyroute2-ndb
PKG_VERSION:=0.6.13
PKG_RELEASE:=1

PYPI_NAME:=pyroute2.ndb
PKG_HASH:=09b1f55f26043ce64c933e8224fd08444a498f381e5dc483bc9f428cbaf0901a

PKG_LICENSE:=Apache-2.0 GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE.Apache.v2 LICENSE.GPL.v2

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyroute2-ndb
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Netlink library: NDB module
  URL:=https://github.com/svinota/pyroute2
  DEPENDS:= \
	+python3-ctypes \
	+python3-logging \
	+python3-pyroute2-core \
	+python3-readline \
	+python3-sqlite3 \
	+python3-urllib
endef

define Package/python3-pyroute2-ndb/description
  NDB is a high-level network management module. It provides
  a transactional DB with multiple sources, from local RTNL
  source to netns and remote systems. The DB provides Python
  API and HTTP RPC (json and plain text), my run as a standalone
  service or may be used as a Python module.
endef

$(eval $(call Py3Package,python3-pyroute2-ndb))
$(eval $(call BuildPackage,python3-pyroute2-ndb))
#$(eval $(call BuildPackage,python3-pyroute2-ndb-src))
