# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyroute2-nftables
PKG_VERSION:=0.6.13
PKG_RELEASE:=1

PYPI_NAME:=pyroute2.nftables
PKG_HASH:=c94bd740d50b03a1a8d9654f769e77afc77a75e05fc5887dd0551e3970f86592

PKG_LICENSE:=Apache-2.0 GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE.Apache.v2 LICENSE.GPL.v2

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyroute2-nftables
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Netlink library: nftables
  URL:=https://github.com/svinota/pyroute2
  DEPENDS:= \
	+python3-pyroute2-core
endef

define Package/python3-pyroute2-nftables/description
  This module provides very basic nftables API.
endef

$(eval $(call Py3Package,python3-pyroute2-nftables))
$(eval $(call BuildPackage,python3-pyroute2-nftables))
#$(eval $(call BuildPackage,python3-pyroute2-nftables-src))
