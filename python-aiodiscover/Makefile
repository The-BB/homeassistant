# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiodiscover
PKG_VERSION:=1.6.1
PKG_RELEASE:=1

PYPI_NAME:=aiodiscover
PKG_HASH:=9f9382f6e9152b102e05512cc9736126ab8f165e217d0168fee5579c24443c9e

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

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
	+python3-async-timeout \
	+python3-asyncio \
	+python3-cached-ipaddress \
	+python3-dns \
	+python3-ifaddr \
	+python3-logging \
	+python3-netifaces \
	+python3-pyroute2
endef

define Package/python3-aiodiscover/description
  Discover hosts by arp and ptr lookup.
endef

$(eval $(call Py3Package,python3-aiodiscover))
$(eval $(call BuildPackage,python3-aiodiscover))
#$(eval $(call BuildPackage,python3-aiodiscover-src))
