# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=lru-dict
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=lru-dict
PKG_HASH:=54fd1966d6bd1fcde781596cb86068214edeebff1db13a2cea11079e3fd07b6b

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-wheel/host

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
