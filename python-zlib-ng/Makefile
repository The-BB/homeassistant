# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=zlib-ng
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PYPI_NAME:=zlib-ng
PKG_HASH:=f2d196b70c733a1e59f380f626fb68fe65aa6fe080a8aa5039c898e83367761d

PKG_LICENSE:=Python-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-zlib-ng
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Drop-in replacement for zlib and gzip modules using zlib-ng
  URL:=https://github.com/bdraco/zlib-ng
  DEPENDS:=+python3-light
endef

define Package/python3-zlib-ng/description
  A drop-in replacement for Python's zlib and gzip modules using zlib-ng.
endef

$(eval $(call Py3Package,python3-zlib-ng))
$(eval $(call BuildPackage,python3-zlib-ng))
#$(eval $(call BuildPackage,python3-zlib-ng-src))
