# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-aiodns
PKG_VERSION:=3.0.0
PKG_RELEASE:=1

PYPI_NAME:=aiodns
PKG_HASH:=946bdfabe743fceeeb093c8a010f5d1645f708a241be849e17edfb0e49e08cd6

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiodns
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Simple DNS resolver for asyncio
  URL:=https://github.com/saghul/aiodns
  DEPENDS:= \
	+python3-asyncio \
	+python3-pycares \
	+python3-unittest
endef

define Package/python3-aiodns/description
  aiodns provides a simple way for doing asynchronous
  DNS resolutions using pycares.
endef

$(eval $(call Py3Package,python3-aiodns))
$(eval $(call BuildPackage,python3-aiodns))
#$(eval $(call BuildPackage,python3-aiodns-src))
