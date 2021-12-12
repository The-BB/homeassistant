# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-aiosignal
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=aiosignal
PKG_HASH:=78ed67db6c7b7ced4f98e495e572106d5c432a93e1ddd1bf475e1dc05f5b7df2

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiosignal
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a list of registered asynchronous callbacks
  URL:=https://github.com/aio-libs/aiosignal
  DEPENDS:= \
	+python3-frozenlist
endef

define Package/python3-aiosignal/description
  A project to manage callbacks in asyncio projects.
  Signal is a list of registered asynchronous callbacks.
endef

$(eval $(call Py3Package,python3-aiosignal))
$(eval $(call BuildPackage,python3-aiosignal))
#$(eval $(call BuildPackage,python3-aiosignal-src))
