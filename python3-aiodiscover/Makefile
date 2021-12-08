# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-aiodiscover
PKG_VERSION:=1.4.5
PKG_RELEASE:=2

PYPI_NAME:=aiodiscover
PKG_HASH:=925654f4ed53ed7a4664e9a5c2fb3d6a1e760f211893d2e517d902fa8fcf7d07

PKG_LICENSE:=Apache-2.0

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiodiscover
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Async Host discovery
  URL:=https://github.com/bdraco/aiodiscover
  DEPENDS:= \
	+python3-dns \
	+python3-ifaddr \
	+python3-pyroute2
endef

define Package/python3-aiodiscover/description
  Discover hosts by arp and ptr lookup.
endef

$(eval $(call Py3Package,python3-aiodiscover))
$(eval $(call BuildPackage,python3-aiodiscover))
#$(eval $(call BuildPackage,python3-aiodiscover-src))
