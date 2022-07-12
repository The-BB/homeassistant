# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-guppy3
PKG_VERSION:=3.1.2
PKG_RELEASE:=1

PYPI_NAME:=guppy3
PKG_HASH:=af580bec5269b1621f45bd589d76aa1a7c1986742a84ab016f0a0de9ff06086d

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-guppy3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Guppy-PE ported to Python 3
  URL:=https://github.com/zhuyifei1999/guppy3/
  DEPENDS:= \
	+python3-distutils \
	+python3-readline
endef

define Package/python3-guppy3/description
  A Python Programming Environment & Heap analysis toolset.
endef

$(eval $(call Py3Package,python3-guppy3))
$(eval $(call BuildPackage,python3-guppy3))
#$(eval $(call BuildPackage,python3-guppy3-src))
