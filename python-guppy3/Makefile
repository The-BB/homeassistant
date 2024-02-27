# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=guppy3
PKG_VERSION:=3.1.4.post1
PKG_RELEASE:=1

PYPI_NAME:=guppy3
PKG_HASH:=05648b88601d57d6f9cadb38e0327833cba50f466381df16a8dacc54fa71ed4e

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
