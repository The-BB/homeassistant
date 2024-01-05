# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=cached-ipaddress
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PYPI_NAME:=cached_ipaddress
PKG_HASH:=5340b609c701a122394a937abef67f130d025f63b25f2523b929944c069c8063

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-poetry-core/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-cached-ipaddress
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Cache construction of ipaddress objects
  URL:=https://github.com/bluetooth-devices/cached-ipaddress
  DEPENDS:=+python3-light
endef

define Package/python3-cached-ipaddress/description
  Cache construction of ipaddress objects.
endef

$(eval $(call Py3Package,python3-cached-ipaddress))
$(eval $(call BuildPackage,python3-cached-ipaddress))
#$(eval $(call BuildPackage,python3-cached-ipaddress-src))
