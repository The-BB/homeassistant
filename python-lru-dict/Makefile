# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-lru-dict
PKG_VERSION:=1.1.7
PKG_RELEASE:=1

PYPI_NAME:=lru-dict
PKG_HASH:=45b81f67d75341d4433abade799a47e9c42a9e22a118531dcb5e549864032d7c

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-lru-dict
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An Dict like LRU container
  URL:=https://github.com/amitdev/lru-dict
  DEPENDS:= \
	+python3-light
endef

define Package/python3-lru-dict/description
  A fast and memory efficient LRU cache for Python.
endef

$(eval $(call Py3Package,python3-lru-dict))
$(eval $(call BuildPackage,python3-lru-dict))
#$(eval $(call BuildPackage,python3-lru-dict-src))
