# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyroute2-core
PKG_VERSION:=0.6.13
PKG_RELEASE:=1

PYPI_NAME:=pyroute2.core
PKG_HASH:=227dfd9f19888ddd1341966822ffd5880db9e3c89375096418c660ff4d1a11d0

PKG_LICENSE:=Apache-2.0 GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE.Apache.v2 LICENSE.GPL.v2

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyroute2-core
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Netlink library: the core
  URL:=https://github.com/svinota/pyroute2
  DEPENDS:= \
	+python3-ctypes \
	+python3-logging \
	+python3-multiprocessing
# ss2 [psutil]
  DEPENDS+= \
	+python3-psutil
endef

define Package/python3-pyroute2-core/description
  This is the core package, it implements the netlink parser and several
  netlink sockets, including RTNL (IPRoute), WireGuard, MPTCP etc.
endef

$(eval $(call Py3Package,python3-pyroute2-core))
$(eval $(call BuildPackage,python3-pyroute2-core))
#$(eval $(call BuildPackage,python3-pyroute2-core-src))
