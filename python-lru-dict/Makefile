# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=lru-dict
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=lru-dict
PKG_HASH:=13c56782f19d68ddf4d8db0170041192859616514c706b126d0df2ec72a11bd7

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
  DEPENDS:=+python3-light
endef

define Package/python3-lru-dict/description
  A fast and memory efficient LRU cache for Python.
endef

$(eval $(call Py3Package,python3-lru-dict))
$(eval $(call BuildPackage,python3-lru-dict))
#$(eval $(call BuildPackage,python3-lru-dict-src))
