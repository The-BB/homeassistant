# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=guppy3
PKG_VERSION:=3.1.4
PKG_RELEASE:=1

PYPI_NAME:=guppy3
PKG_HASH:=af215b40328ca409728cbd50b4c0fb17a628cc0aa82f820b6dc9068284bee009

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-guppy3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Guppy-PE ported to Python 3
  URL:=https://github.com/zhuyifei1999/guppy3/
  DEPENDS:=+python3-readline
endef

define Package/python3-guppy3/description
  A Python Programming Environment & Heap analysis toolset.
endef

$(eval $(call Py3Package,python3-guppy3))
$(eval $(call BuildPackage,python3-guppy3))
#$(eval $(call BuildPackage,python3-guppy3-src))
